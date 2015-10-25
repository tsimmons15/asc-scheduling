Template.currentStandings.created = function() {
	this.selected = new ReactiveVar(false);
	this.prevSelected = new ReactiveVar(false);
};

Template.currentStandings.helpers({
 'list': function() {
	 return Meteor.users.find({username: {$ne: 'admin'}}, {sort:{"profile.skill":-1, username:1}});
 }
});

Template.currentStandings.events({
	'click #profile': function(event, target) {
		console.log('Testing...');
		Router.go('profile', {_id: this._id});
	}
});

Template.matchResults.helpers({
	'playerCount': function() {
		return Meteor.users.find({}).count() > 1;
	},
	'user': function() {
		return Meteor.user();
	},
	'playerList': function() {
		var currID = Meteor.userId();
		return Meteor.users.find({_id:{$ne:currID}});
	}
});



Template.matchResults.events({
'submit form' : function(event, target) {
	event.preventDefault();
	var player1 = event.target.player1;
	var player2 = event.target.player2;
	var winner = event.target.radWinner;
	
	if (player1.value == 'None' || player2.value == 'None') {
		alert('Please choose both contestant...');
	}
	else if (player1.value == player2.value) {
		alert('You cannot have a contestant play themselves...');
	} else if (!(winner[0].checked ^ winner[1].checked)) {
		alert('You must select a winner');
	}else {
		var player1 = updateStanding.elements['player1'];
		var player2 = updateStanding.elements['player2'];
		
		
		player1 = Meteor.users.findOne({_id: player1.value});
		player2 = Meteor.users.findOne({_id: player2.value});
		
		if (winner[0].checked) {
			//Winner 0 was checked, so player1 came in first
			player1.profile.rank = 1;
			player2.profile.rank = 2;
		} else {
			//Winner 1 was checked, so player2 came in first
			player1.profile.rank = 2;
			player2.profile.rank = 1;
		}
		
		Meteor.call('adjustScores', player1, player2);
	}
}
});