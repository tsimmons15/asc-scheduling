var trueskill = Meteor.npmRequire('trueskill');

/*Meteor.users.update({}, {$set: {'profile.activities': 
	[
		{'event':'Dodgeball', 'order': 1},
		{'event':'Basketball', 'order': 2},
		{'event':'Soccer', 'order': 3},
		{'event':'Chess', 'order': 4},
		{'event':'Football', 'order': 5}
	]}}, {upsert: true, multi:true});
*/

Meteor.methods({
	'adjustScores': function(player1, player2) {
		trueskill.AdjustPlayers([player1.profile,player2.profile]);
		player1.profile.rank = 0;
		player2.profile.rank = 0;
		Meteor.users.update({_id:player1._id}, {$set:{"profile.skill":player1.profile.skill}});
		Meteor.users.update({_id:player2._id}, {$set:{"profile.skill":player2.profile.skill}});
	},
	'userProfile': function(id) {
		return Meteor.users.findOne({_id:id});
	},
	'updateActivities': function(el, index) {
		console.log('Increasing greater than 3');
		Activities.update({order:{$gt: index}}, 
						{$inc:{order: 1}},
							{multi: true});
		console.log('Setting id: ' + el.id + ' to index ' + index );
		Activities.update({_id: el.id}, {$set: {order: index}});
	}
});

Meteor.users.allow({
	update:function() {
		return true;
	}
})