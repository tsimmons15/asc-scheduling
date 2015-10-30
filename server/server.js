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
	}
});