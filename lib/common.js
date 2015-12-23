//Allows client access to user database, will be removed before final implementation
Meteor.users.allow({
	update: function() {
		return true;
	}
});

Activities = new Mongo.Collection('Activities');

SystemUtilities = new Mongo.Collection('SystemUtilities');

StaffSchedule = new Mongo.Collection('StaffSchedule');
/*
	Currently, in the form:
	{
		_id:id,//This ID comes from the Meteor.users collection
		monday_start: time,
		monday_stop: time,
		tuesday_start: time,
		tuesday_stop: time,
		wednesday_start: time,
		wednesday_stop: time,
		thursday_start: time,
		thursday_stop: time,
		friday_start: time,
		friday_stop: time,
		saturday_start: time,
		saturday_stop: time,
		sunday_start: time,
		sunday_stop: time
	}
		
	
	Ultimately, StaffSchedule will be a list of employees in the form:
	{
		_id: id,//This ID comes from the Meteor.users collection, which gives us all the items from that collection
		num_hour: hours,
		monday: {
			shift_count: count, 
			shifts: [s_1, s_2, s_2, ..., s_count]
		},
		tuesday: {
			shift_count: count, 
			shifts: [s_1, s_2, s_2, ..., s_count]
		},
		wednesday: {
			shift_count: count, 
			shifts: [s_1, s_2, s_2, ..., s_count]
		},
		thursday: {
			shift_count: count, 
			shifts: [s_1, s_2, s_2, ..., s_count]
		},
		friday: {
			shift_count: count, 
			shifts: [s_1, s_2, s_2, ..., s_count]
		},
		saturday: {
			shift_count: count, 
			shifts: [s_1, s_2, s_2, ..., s_count]
		},
		sunday: {
			shift_count: count, 
			shifts: [s_1, s_2, s_2, ..., s_count]
		}
	}
*/
		
