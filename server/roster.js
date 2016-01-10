var Fibers = Npm.require('fibers');

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

Meteor.publish('allPlayers', function() {
	return rosterDB.select(
		'SELECT * FROM computerprogramming',
			[ { table:'computerprogramming' } ]
		);
});

timeSlots = {
	'800': [
	],
	'830': [
	],
	'900': [
	],
	'930': [
	],
	'1500': [
	],
	'1530': [
	],
	'1600': [
	],
	'1630': [
	],
	'1700': [
	],
	'1730': [
	],
	'1800': [
	],
	'1830': [
	]
};

Meteor.methods({
	'testing': function() {
		
	},
	'timeSlots': function(time) {
		this.unblock();
		return timeSlots[time];
	}
});

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
		console.log(rows);
		console.log(fields);
	});

	return numGamesPlayedPerMonth;
}

function getNumTutorsAtWork(department, shiftStart, shiftEnd, currentDay) {
	numTutorsAtWork = -1;
	
	var fiber = Fibers.current;

	stmt = "SELECT COUNT(1) FROM " + department + " WHERE " + 
			currentDay + "_start != 0 AND " + 
			currentDay + "_start <= " + shiftStart + " AND " +
			currentDay + "_end >= " + shiftEnd;
	
	rosterDB.db.query(stmt, function(err, rows, fields) {
		if(err) {
			console.log(err);
		}
		fiber.run(rows);
	});

	numTutorsAtWork = Fibers.yield();
	
	return numTutorsAtWork;
}

//There might be an optimization we can do here....
function hadRecessToday(uniquePersonID) {
	/*
	foreach (person in chosenList) {
		if (person == uniquePersonID) {
			return true; // They have had recess
		}
	}
	*/
	//Assume false
	return false;
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
	var fiber = Fibers.current;
	month = getCurrMonthAbbr();
	numRecesses = -1;
	
	stmt = "SELECT " + month + " FROM games_played_per_month " +
			"WHERE ranuniqueid = " + ranUniqueId;
	rosterDB.db.query(stmt, function(err, rows, fields) {
		if (err)
			console.log(err);
		fiber.run(rows);
	});
	numRecesses = Fibers.yield();

	return numRecesses;
}

function addRanUniqueIdToGamesPlayedPerMonthTable(ranUniqueId) {
	stmt = "INSERT IGNORE INTO games_played_per_month " + 
			"SET ranuniqueid = " + ranUniqueId;
	rosterDB.db.query(stmt, function(err, rows, fields) {
		if (err) {
			console.log(err);
		}
		console.log('Test');
		console.log(rows);
		console.log(fields);
	});
}

function getPlayers(department, shiftStart, shiftEnd, numTutorsAtWork, minTutorsNeeded) {
	limit = numTutorsAtWork - minTutorsNeeded;
	
	if (limit > 0) {
		stmt = "SELECT name, " + currentDay + "_start, " +
				currentDay + "_end, ranuniqueid FROM " +
				department + " WHERE " +
				currentDay + "_start != 0 AND " +
				currentDay + "_start <= " + shiftStart + " AND " +
				currentDay + "_end >= " + shiftEnd;
		//Query here
		/*
		while (rdr.Read())
        {
            string name = rdr.GetString(0);
            int ranUniqueId = rdr.GetInt32(3);
            int numGamesPlayedPerMonth = getNumGamesPlayedPerMonth(ranUniqueId);
            Fibers(function() {
			numGamesPlayedPerMonth = getNumGamesPlayedPerMonth(123456789);
		}).run();

            // Check if this person has already been scheduled for a recess today.
		    //  If he hasn't, the IF statement is true, and the body will execute.
            // Also, check if this person has had already reached the 
			//   monthly limit of recesses.
            if (!hadRecessToday(ranUniqueId) && 
				numGamesPlayedPerMonth <= monthlyRecessLimit)
            {
                // This dictionary contains a list of all eligible players. 
				//  It will be sorted based on number of games played.
                eligiblePlayersOneDepartment.Add(
					new Player(name, department, numGamesPlayedPerMonth,
								 ranUniqueId, shiftStart, shiftEnd));
            }
        }
		*/

		//eligiblePlayersOneDepartment.Sort();
		
		/*
		for (var i = 0; i < limit && i < eligiblePlayersOneDepartment.COunt; i++) {
			name = eligiblePlayersOneDepartment[i].Name;
			numGamesPlayedPerMonth = eligiblePlayersOneDepartment[i].GamesPlayed;
			randomUniqueId = eligiblePlayersOneDepartment[i].RanUniqueId;
			eligiblePlayersAllDepartmentsOneTimeSlot.Add(
				new Player(name, department, numGamesPlayedPerMonth,
							randomUniqueId, shiftStart, shiftEnd));
		}
		*/

		//eligiblePlayersOneDepartment.Clear();
	}
}

function getHourlyMinRequiredStaff(department, shiftStart) {
	stmt = "SELECT minstaff FROM hourlyminstaffonduty WHERE " +
		   "department = '" + department + "' AND time = " + shiftStart;
	result = 'Test';
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
		console.log(row);
		console.log(fields);
	});
}

function loadTodaysRecessPeople() {
	stmt = "SELECT name, department, shiftstart," + 
			"games_played FROM todaysrecesspeople";
	
	for (i in timeSlots) {
		timeSlots[i] = [];
	}
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
	
	additionalPlayerInfo = [name, department];
	console.log(name, department, shiftStart, games_played);
	timeSlots[shiftStart].push({
		'games_played': games_played,
		'department': department,
		'name': name
	});
	console.log(timeSlots[shiftStart]);
}
