//Allows client access to user database, will be removed before final implementation
Meteor.users.allow({
	update: function() {
		return true;
	}
});

PlayerList = new Mongo.Collection('PlayerList');

Activities = new Mongo.Collection('Activities');

SystemUtilities = new Mongo.Collection('SystemUtilities');

players = new MysqlSubscription('allPlayers');
