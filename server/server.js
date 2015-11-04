//The MeteorJS implementation of trueskill
var trueskill = Meteor.npmRequire('trueskill');

//Meteor.methods are the lists of methods the server will expose to the client
//Meteor.methods is a JSON object, a collection of name:function pairs
Meteor.methods({
	//Method to adjust the scores using the trueskill algorithm
	'adjustScores': function(player1, player2) {
		trueskill.AdjustPlayers([player1.profile,player2.profile]);
		player1.profile.rank = 0;
		player2.profile.rank = 0;
		Meteor.users.update({_id:player1._id}, {$set:{"profile.skill":player1.profile.skill}});
		Meteor.users.update({_id:player2._id}, {$set:{"profile.skill":player2.profile.skill}});
	},
	//Takes an id
	//Returns the profile associated with that id
	'userProfile': function(id) {
		return Meteor.users.findOne({_id:id});
	},
	//Update the list of activities 
	//The original idea:
	//	Set up a weighted average of the first n (default, 5?) items in the list
	//	So, the first item in the list gets full weight, 1
	//	Second item gets half weight, 1/2
	//	So on, item k is worth 1/k
	//	The problem with the weigted average is that the 
	'updateActivities': function(el, index) {
		//Update the activities record, deleting previous change
		
		//Update the activities record with the new values the user chose to vote with
		
		//The shameful code below is history so we get the general idea of the form of the calls
		//	Is completely wrong, just not enough to warrant deletion, yet...
		/*Activities.update({order:{$gt: index}}, 
						{$inc:{order: 1}},
							{multi: true});
		Activities.update({_id: el.id}, {$set: {order: index}});*/
	},
	//The limit on the number of recess per month
	//Possibly change it so it takes their current number of recess'
	//  and returns true or false whether that user can participate
	'recessLimit': function() {
		return 7;
	}, 
	//Returns the hourly minimum required staff from hour to hour,
	// and department to department
	// Talk to Tonny
	'minRequiredStaff': function(department, shiftStart) {
		return -1;
	},
	//Takes the in-database representation of the departments,
	// and transfers them to more user-friendly version
	//  Copied from Tonny:Form1.cs
	'departmentFormatting': function(department) {
		deptName = "Error";
		switch (department)
		{
			case 0:
				deptName = "Welcome Desk";
				break;
			case 1:
				deptName = "Chemistry";
				break;
			case 2:
				deptName = "Testing Center";
				break;
			case 3:
				deptName = "ASL";
				break;
			case 4:
				deptName = "Computer Programming";
				break;
			case 5:
				deptName = "Economics";
				break;
			case 6:
				deptName = "Foreign Language";
				break;
			case 7:
				deptName = "Communication";
				break;
			case 8:
				deptName = "Management";
				break;
			case 9:
				deptName = "MSC";
				break;
			case 10:
				deptName = "SPA";
				break;
			case 11:
				deptName = "Music";
				break;
			case 12:
				deptName = "Accounting";
				break;
			case 13:
				deptName = "OST";
				break;
			case 14:
				deptName = "Hist/Govt";
				break;
			case 15:
				deptName = "Physics";
				break;
			case 16:
				deptName = "Biology";
				break;
			case 17:
				deptName = "MSC IA";
				break;
			case 18:
				deptName = "Gen. Tut. IA";
				break;
		}
		return deptName;
	}
});