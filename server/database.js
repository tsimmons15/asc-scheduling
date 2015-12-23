//This file contains the Server-side javascript used to interface with the database

Meteor.methods({
	//Method to adjust the scores using the trueskill algorithm
	'adjustScores': function(player1, player2) {
		trueskill.AdjustPlayers([player1.profile,player2.profile]);
		player1.profile.rank = 0;
		player2.profile.rank = 0;
		Meteor.users.update({_id:player1._id}, 
			{$set:{"profile.skill":player1.profile.skill}});
		Meteor.users.update({_id:player2._id}, 
			{$set:{"profile.skill":player2.profile.skill}});
	},
	//Takes an id
	//Returns the profile associated with that id
	'userProfile': function(id) {
		return Meteor.users.findOne({_id:id});
	}, 
	'find_logo': function() {
		//If this needs to change, just make sure it is still in images
		//Once the database gets finalized, store all pictures in database
		return "/images/valencialogo.png";
	},
	//Update the list of activities 
	//The original idea:
	//	Set up a weighted average of the first n (default, 5?) items in the list
	//	So, the first item in the list gets full weight, 1
	//	Second item gets half weight, 1/2
	//	So on, item k is worth 1/k
	//	The problem with the weigted average is that after every vote, you need to
	//   subtract off their previous vote, or some of their votes might become too heavy
	'submit_vote': function(user_id, elements) {
		var voting_limit = Meteor.call('voting_limit');
		var chooseCount = (voting_limit < elements.length) ? voting_limit : elements.length;
		
		//Find 
		var choices = Meteor.users.findOne({_id:user_id}, {'profile.choices':1}).profile.choices;
		//and remove the previous vote in the Activities master-list
		for(i = 0; i < choices.length; i++) {
			Activities.update({_id: choices[i]}, {$inc: {order: -(1/(i+1))}});
		}
		
		//Add the new top-chooseCount votes to the Activities master
		//At the same time, keep track of what the order of votes was, so that you can add that to the user's profile
		var choices = new Array();
		for (i = 0; i < chooseCount; i++) {
			var elem = elements[i];
			Activities.update({_id:elem}, {$inc: {order: 1/(i+1)}});
		}
		
		
		Meteor.users.update({_id: user_id}, 
			{$set: {'profile.choices': elements}}, {upsert:true});
	},
});
