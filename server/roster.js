var Fibers = Npm.require('fibers');
var Futures = Npm.require('fibers/future');


var rosterDB = new LiveMysql({
	host: 'localhost',
	port: 3306,
	user: 'root',
	password: 'password_here',
	database: 'roster'
});

//Function called when the server 'quits'
//  Closes MySQL connection
//  Supposedly. Never really tested
var closeAndExit = function() {
	rosterDB.end();
	process.exit();
};
// Close connections on hot code push
process.on('SIGTERM', closeAndExit);
// Close connections on exit (ctrl + c)
process.on('SIGINT', closeAndExit);

Meteor.startup(function() {
	update_list();

	//Cron documentation (sort of):
	//   https://atmospherejs.com/mrt/cron
	var cron = new Meteor.Cron( {
		events: {
			'0 0 * * 1-5' : update_list
		}
	});
});

Meteor.publish('allPlayers', function() {
	return rosterDB.select(
		'SELECT * FROM computerprogramming',
			[ { table:'computerprogramming' } ]
		);
});

eligiblePlayersAllDepartmentsOneTimeSlot = [];
allPlayersAllDepartments 				 = [];

timeSlots = {
	'800' : ReactiveVar([]),
	'830' : ReactiveVar([]),
	'900' : ReactiveVar([]),
	'930' : ReactiveVar([]),
	'1500': ReactiveVar([]),
	'1530': ReactiveVar([]),
	'1600': ReactiveVar([]),
	'1630': ReactiveVar([]),
	'1700': ReactiveVar([]),
	'1730': ReactiveVar([]),
	'1800': ReactiveVar([]),
	'1830': ReactiveVar([])
};

Meteor.methods({
	'timeSlots': function(time) {
		console.log('Getting timeSlots...');
		console.log(timeSlots[time]);
		return timeSlots[time];
	}
});


var update_list = function() {
	for(i in timeSlots) {
		timeSlots[i].set([]);
	}
	eligiblePlayersAllDepartmentsOneTimeSlot = [];
	allPlayersAllDepartments 				 = [];

	Fibers(function(){
		main();
	}).run();
}

function main() {
	// erase list containing people that have been picked today. This is needed if the application has already been launched once, and the user presses the "update tables" button twice.
	//uniquePersonIDList.Clear();
	//Clear form
	//Not my comment ->//int numberOfTutorsAtWork;
	//currentDayTxt.Text = currentDay.ToUpper() + " " + 
	//						DateTime.Now.ToString("MM/dd");

	// Get current date in yyyyMMdd format
	currentDate = getDate();
	// get last launch date from database
	lastAppLaunchDate = getLastLaunchDate();

	// set boolean value used to determine whether or not numberOfGamesPlayed should be updated for eligible players. 
	// Used to determine if app has already been launched once today. If it has, there is no need to update games_played values again.
	if (lastAppLaunchDate === currentDate)
	{
		loadTodaysRecessPeople();
		console.log('Just loaded todaysRecessPeople');
		for(i in timeSlots) {
			console.log('After: ');
			console.log(timeSlots[i].get());
		}
	}
	else
	{
		// truncate todaysRecessPeople table
		truncateTable("todaysrecesspeople");

		departmentsArray = [ "welcomedesk", "chemistry", "testingcenter", "asl", "computerprogramming", "economics", "foreignlanguage", "communication", "msc_ia", "management", "msc", "spa", "music", "accounting", "ost", "histgovt", "physics", "biology", "gen_tut_ia" ];

		// parallel arrays
		shiftStartArray = [ 800, 830, 900, 930, 1500, 1530, 1600, 1630, 1700, 1730, 1800, 1830 ];
		shiftEndArray = [ 830, 900, 930, 1000, 1530, 1600, 1630, 1700, 1730, 1800, 1830, 1900 ];
		for (var j = 0; j < shiftStartArray.length; j++)
		{
		    for (var i = 0; i < departmentsArray.length; i++)
		    {
				minEmployeesNeeded = 
						getHourlyMinRequiredStaff(departmentsArray[i], shiftStartArray[j]);
				var numberOfTutorsAtWork = 
						getNumTutorsAtWork(departmentsArray[i], shiftStartArray[j], shiftEndArray[j], getDayOfWeek());
		        getPlayers(departmentsArray[i], shiftStartArray[j], shiftEndArray[j], numberOfTutorsAtWork, minEmployeesNeeded);
		    }

	        for (i in eligiblePlayersAllDepartmentsOneTimeSlot)
	        {
	            randomUniqueId = eligiblePlayersAllDepartmentsOneTimeSlot[i].ranuniqueid;
	            numberOfGamesPlayedPerMonth = eligiblePlayersAllDepartmentsOneTimeSlot[i].numGamesPlayedPerMonth;

	            /* This Boolean determines whether or not a user's games_played value should be incremented. If the app is launched twice (or more) 
	            times in one day there is no need to increment games_played, because it has already happened once.*/
	            //if (shouldUpdateGamesPlayedValue)
	            //{
	            // Update number of games played for current user
	            numberOfGamesPlayedPerMonth = updateNumGamesPlayed(randomUniqueId, numberOfGamesPlayedPerMonth);
	            //}

	            name = eligiblePlayersAllDepartmentsOneTimeSlot[i].name;
	            department = eligiblePlayersAllDepartmentsOneTimeSlot[i].department;
	            shiftStart = eligiblePlayersAllDepartmentsOneTimeSlot[i].shiftstart;
	            shiftEnd = eligiblePlayersAllDepartmentsOneTimeSlot[i].shiftend;

	            // Add the person to the graphical user interface
	            addPersonToList(name, department, shiftStart, numberOfGamesPlayedPerMonth);

	            // Add person to list that keeps track of all the people that have had a recess today.
	            allPlayersAllDepartments.push(randomUniqueId);

	            // Add person to table todaysRecessPeople
	            addPersonToTodaysRecessPeople(name, department, shiftStart, numberOfGamesPlayedPerMonth);
	        }

		    // Clear the list to get ready for the next time slot.
		    eligiblePlayersAllDepartmentsOneTimeSlot = [];
		}
		// write current date to 'meta' table
		writeCurrentDateToMetaTable();
		console.log('Just finished compiling the list');
		for(i in timeSlots) {
			console.log('After: ');
			console.log(timeSlots[i].get());
		}
    }
}


function getLastLaunchDate() {
	date = "";
	var fiber = Fibers.current;
	stmt = "SELECT lastdatelaunch FROM meta WHERE ID = 1";
	rosterDB.db.query(stmt, function(err, rows, fields) {
		fiber.run(rows[0].lastdatelaunch);
	});
	date = Fibers.yield();
	return date;
}

function writeCurrentDateToMetaTable() {
	date = getDate();
	
	stmt = "UPDATE meta SET lastdatelaunch = " + date +
		   " WHERE ID = 1";
	
	rosterDB.db.query(stmt, function(err, rows, fields) {
		if(err)
			console.log(err);
	})
}

function updateNumGamesPlayed(ranUniqueId, numGamesPlayedPerMonth) {
	currMonth = getCurrMonthAbbr();
	
	numGamesPlayedPerMonth++;

	stmt = "UPDATE games_played_per_month SET " + 
			currMonth + " = " + numGamesPlayedPerMonth +
		   " WHERE ranuniqueid = " + ranUniqueId;
	rosterDB.db.query(stmt, function(err, rows,fields) {
		if (err) {
			console.log(err);
		}
	});
	return numGamesPlayedPerMonth;
}

function getNumTutorsAtWork(department, shiftStart, shiftEnd, currentDay) {
	numTutorsAtWork = -1;
	
	var fiber = Fibers.current;

	stmt = "SELECT COUNT(1) as count FROM " + department + " WHERE " + 
			currentDay + "_start != 0 AND " + 
			currentDay + "_start <= " + shiftStart + " AND " +
			currentDay + "_end >= " + shiftEnd;
	rosterDB.db.query(stmt, function(err, rows, fields) {
		if(err) {
			console.log(err);
		}
		if (rows && rows.length > 0)
			fiber.run(rows[0].count);
	});
	numTutorsAtWork = Fibers.yield();

	return numTutorsAtWork;
}

//There might be an optimization we can do here....
function hadRecessToday(uniquePersonID) {
	for(i in allPlayersAllDepartments) {
		if(allPlayersAllDepartments[i].ranuniqueid == uniquePersonID) {
			return true;
		}
	}

	//Assume false
	return false;
}

function getDate() {
	result = "";
	date = new Date();
	var day = date.getDate();
	day = ((day < 10) ? '0' : '') + day;
	var month = date.getMonth() + 1;
	month = ((month < 10) ? '0' : '') + month;

	result = date.getFullYear() + "" + month + "" + day;
	
	return result;
}

function getDayOfWeek() {
	currentDay = "";
	
	switch((new Date).getDay()) {
		case 0:
			currentDay = "sunday";
		break;
		case 1:
			currentDay = "monday";
		break;
		case 2:
			currentDay = "tuesday";
		break;
		case 3:
			currentDay = "wednesday";
		break;
		case 4:
			currentDay = "thursday";
		break;
		case 5:
			currentDay = "friday";
		break;
		case 6:
			currentDay = "saturday";
		break;
	}

	return currentDay;
}

function getCurrMonthAbbr() {
	month = "";
	
	switch ((new Date).getMonth()) {
		case 0:
			month = "jan";
		break;
		case 1:
			month = "feb";
		break;
		case 2:
			month = "mar";
		break;
		case 3:
			month = "apr";
		break;
		case 4:
			month = "may";
		break;
		case 5:
			month = "jun";
		break;
		case 6:
			month = "jul";
		break;
		case 7:
			month = "aug";
		break;
		case 8:
			month = "sep";
		break;
		case 9:
			month = "oct";
		break;
		case 10:
			month = "nov";
		break;
		case 11:
			month = "dec";
		break;
	}

	return month;
}

function getNumGamesPlayedPerMonth(ranUniqueId) {
	addRanUniqueIdToGamesPlayedPerMonthTable(ranUniqueId);
	var future = new Futures;
	month = getCurrMonthAbbr();
	numRecesses = -1;
	
	stmt = "SELECT " + month + " as count FROM games_played_per_month " +
			"WHERE ranuniqueid = " + ranUniqueId;
	rosterDB.db.query(stmt, function(err, rows, fields) {
		if (err)
			console.log(err);
		future.return(rows[0].count);
	});

	return future.wait();
}

function addRanUniqueIdToGamesPlayedPerMonthTable(ranUniqueId) {
	stmt = "INSERT IGNORE INTO games_played_per_month " + 
			"SET ranuniqueid = " + ranUniqueId;
	rosterDB.db.query(stmt, function(err, rows, fields) {
		if (err) {
			console.log(err);
		}
	});
}

function getPlayers(department, shiftStart, shiftEnd, numTutorsAtWork, minTutorsNeeded) {
	limit = numTutorsAtWork - minTutorsNeeded;
	var eligiblePlayersOneDepartment = [];
	if (limit > 0) {
		stmt = "SELECT name, " + currentDay + "_start, " +
				currentDay + "_end, ranuniqueid FROM " +
				department + " WHERE " +
				currentDay + "_start != 0 AND " +
				currentDay + "_start <= " + shiftStart + " AND " +
				currentDay + "_end >= " + shiftEnd;

		var fiber = Fibers.current;

		rosterDB.db.query(stmt, function(err, rows, fields) {
			if(err) {
				console.log(err);
			}
			
			for( i in rows ) {
				var name = rows[i].name;
				var ranUniqueId = rows[i].ranuniqueid;
				numGamesPlayedPerMonth = 0;
				Fibers(function(){
					numGamesPlayedPerMonth = getNumGamesPlayedPerMonth(ranUniqueId);
				}).run();
				// Check if this person has already been scheduled for a recess today.
		    	//  If he hasn't, the IF statement is true, and the body will execute.
            	// Also, check if this person has had already reached the 
				//   monthly limit of recesses.
				//Issue with the recessLimits and async... Come back later to remove hard-code
            	if (!hadRecessToday(ranUniqueId) && numGamesPlayedPerMonth <= 7) {
	                // This dictionary contains a list of all eligible players. 
					//  It will be sorted based on number of games played.
					eligiblePlayersOneDepartment.push({
						'name': name, 
						'department': department,
						'numGamesPlayedPerMonth': numGamesPlayedPerMonth,
						'ranuniqueid': ranUniqueId,
						'shiftstart': shiftStart,
						'shiftend': shiftEnd
					});
	            }
			}

			eligiblePlayersOneDepartment.sort( function(a,b) {
				field = 'numGamesPlayedPerMonth';
				if(a[field] > b[field]) {
					return 1;
				} else if(a[field] < b[field]) {
					return -1;
				} 

				return 0;
			});

			for (i in eligiblePlayersOneDepartment) {
				if (--limit <= 0){
					break;
				}

				name = eligiblePlayersOneDepartment[i].name;
				numGamesPlayedPerMonth = eligiblePlayersOneDepartment[i].numGamesPlayedPerMonth;
				randomUniqueId = eligiblePlayersOneDepartment[i].ranuniqueid;
				eligiblePlayersAllDepartmentsOneTimeSlot.push({
					'name': name, 
					'department': department,
					'numGamesPlayedPerMonth': numGamesPlayedPerMonth,
					'ranuniqueid': ranUniqueId,
					'shiftstart': shiftStart,
					'shiftend': shiftEnd
				});
			}

			fiber.run('');
		});
		Fibers.yield();
	}
}

function getHourlyMinRequiredStaff(department, shiftStart) {
	stmt = "SELECT minstaff FROM hourlyminstaffonduty WHERE " +
		   "department = '" + department + "' AND time = " + shiftStart;
	var fiber = Fibers.current;
	var test = rosterDB.db.query(stmt, function(err, rows, fields) {
		if(err) {
			console.log(err);
		}
		fiber.run(rows[0].minstaff);
	});
	var results = Fibers.yield();
	return results;
}

function getFormattedDepartmentNames(department) {
	deptName = "Error";
	switch (department)
	{
		case "welcomedesk":
            deptName = "Welcome Desk";
            break;
        case "chemistry":
            deptName = "Chemistry";
            break;
        case "testingcenter":
            deptName = "Testing Center";
            break;
        case "asl":
            deptName = "ASL";
            break;
        case "computerprogramming":
            deptName = "Computer Programming";
            break;
        case "economics":
            deptName = "Economics";
            break;
        case "foreignlanguage":
            deptName = "Foreign Language";
            break;
        case "communication":
            deptName = "Communication";
            break;
        case "msc_ia":
            deptName = "MSC IA";
            break;
        case "management":
            deptName = "Management";
            break;
        case "msc":
            deptName = "MSC";
            break;
        case "spa":
            deptName = "SPA";
            break;
        case "music":
            deptName = "Music";
            break;
        case "accounting":
            deptName = "Accounting";
            break;
        case "ost":
            deptName = "OST";
            break;
        case "histgovt":
            deptName = "Hist/Govt";
            break;
        case "physics":
            deptName = "Physics";
            break;
        case "biology":
            deptName = "Biology";
            break;
        case "gen_tut_ia":
            deptName = "Gen. Tut. IA";
            break;
    }
	return deptName;
}

function truncateTable(table_name) {
	stmt = "TRUNCATE TABLE " + table_name;

	rosterDB.db.query(stmt, function(err, row, fields) {
		if (err) {
			console.log(err);
		}
	});
}

function addPersonToTodaysRecessPeople(name, department, shiftStart, gamesPlayed) {
	stmt = "INSERT INTO todaysrecesspeople(name, department, " + 
		   "shiftstart, games_played) VALUES ( " +
		   "\"" + name + " \", " +
		   "\"" + department + "\", " +
		   		  shiftStart + "," +
				  gamesPlayed + ");";
	rosterDB.db.query(stmt, function(err, row, fields) {
		if (err) {
			console.log(err);
		}
	});
}

function loadTodaysRecessPeople() {
	stmt = "SELECT name, department, shiftstart," + 
			"games_played FROM todaysrecesspeople";

	rosterDB.db.query(stmt, function(error, row, fields) {
		if(error) {
			console.log('Well, shit...');
		}
		row.forEach(function(aRow) {
			var name = aRow.name;
			var department = aRow.department;
			var shift_start = aRow.shiftstart;
			var games_played = aRow.games_played;
			addPersonToList(name, department, shift_start, games_played);
		});
	});
}

function addPersonToList(name, department, shiftStart, games_played) {
	department = getFormattedDepartmentNames(department);
	console.log('Adding ' + name + ' to timeSlots[' + shiftStart + '].');
	timeSlots[shiftStart].get().push({
		'games_played': games_played,
		'department': department,
		'name': name
	});
}
