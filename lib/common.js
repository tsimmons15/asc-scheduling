Meteor.users.allow({
	update: function() {
		return true;
	}
});

Activities = new Mongo.Collection('Activities');
	/*Activities.remove({});
	Activities.insert({
		'event':'Dodgeball',
		'eventLower': 'dodgeball',
		'order':1
	});
	Activities.insert({
		'event':'Basketball',
		'eventLower':'basketball',
		'order':2
	});
	Activities.insert({
		'event':'Chess',
		'eventLower':'chess',
		'order':3
	});
	Activities.insert({
		'event':'Football',
		'eventLower':'football',
		'order':4
	});
	Activities.insert({
		'event':'Baseball',
		'eventLower':'baseball',
		'order':5
	});
	*/