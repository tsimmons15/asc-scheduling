//I think this is out-dated, since Bootstrap gives me the functionality it was trying to provide
/*Template.currentStandings.created = function() {
	this.selected = new ReactiveVar(false);
	this.prevSelected = new ReactiveVar(false);
};*/

Template.tournament.helpers({
	'isVerified': function() {
		return Meteor.user().emails[0].verified;
	}
});

//Helper functions for the currentStandings template
Template.currentStandings.helpers({
 //Get the list of current users (excluding the admin account), and sort by the trueskill attribute
 //  Users of similar skill will be sorted alphabetically
 'list': function() {
	 return Meteor.users.find({username: {$ne: 'admin'}}, {sort:{"profile.skill":-1, username:1}});
 }
});

//Event handlers for the currentStandings template
Template.currentStandings.events({
	//The user has clicked the profile, route to their profile
	'click #profile': function(event, target) {
		console.log('Testing...');
		Router.go('profile', {_id: this._id});
	}
});

//Helper functions for the matchResults template
Template.matchResults.helpers({
	//Get the count of current players
	'playerCount': function() {
		return Meteor.users.find({}).count() > 1;
	},
	//Get the currently logged-in user
	'user': function() {
		return Meteor.user();
	},
	//Gets all but the current player
	'playerList': function() {
		var currID = Meteor.userId();
		//Filter out the admin account as well?
		return Meteor.users.find({_id:{$ne:currID}});
	}
});

//Event handlers for the matchResults template
Template.matchResults.events({
//The user has submitted the match results
	'submit form' : function(event, target) {
		event.preventDefault();
		//Take the two players names
		var player1 = event.target.player1;
		var player2 = event.target.player2;
		//Which won?
		var winner = event.target.radWinner;
		
		//Keeps you from submitting a one-sided game
		if (player1.value == 'None' || player2.value == 'None') {
			alert('Please choose both contestant...');
		}
		//Or play against yourself, in a different way
		else if (player1.value == player2.value) {
			alert('You cannot have a contestant play themselves...');
		} 
		//If you haven't just selected a single winner, or haven't selected a winner
		//Using XOR, because why not?
		else if (!(winner[0].checked ^ winner[1].checked)) {
			alert('You must select a winner');
		}
		//If everything is fine...
		else {
			//Update both players standings
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
