//The MAIL_URL environment variable
//Worst case scenario, set up in a file in server/lib
//process.env.MAIL_URL = 'info_for_mail_server';


//Meteor.methods are the lists of methods the server will expose to the client
//Meteor.methods is a JSON object, a collection of name:function pairs
//The methods below are primarily admin functions
Meteor.methods({
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
