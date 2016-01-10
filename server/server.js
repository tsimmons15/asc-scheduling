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
		return getFormattedDepartmentNames(department);
	}
});
