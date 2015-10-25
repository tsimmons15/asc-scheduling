Template.displayHeader.helpers({
	'logo': function() {
		return "/images/valencialogo.png";
	}
});
Template.navItems.helpers({
	'activeIfTemplateIs': function(template) {
		var current = Router.current();
		if (template == current.lookupTemplate()) {
			return 'active';
		} else {
			return '';
		}
	}
});
Template.displayHeader.events({
 'click .logout': function() {
	Meteor.logout();
 }	 
});

Template.home.helpers({
	'isAdmin': function() {
		var user = Meteor.user();
		return (user.username == 'admin');
	}
});

Template.eventVoting.helpers({
    'activities': function() {
		return Activities.find({}, {sort: {order: -1}});
	}
});

Template.eventVoting.events({
	'submit #vote': function(event) {
		event.preventDefault();
		//chooseCount will be implemented as an admin option in the future
		var chooseCount = 4;

		//Find and remove the previous vote in the Activities master-list
		console.log(Meteor.users.find({_id: Meteor.userId()}).fetch());
		console.log(Meteor.users.find({_id: Meteor.userId()}, {"profile.choices": 1}).fetch());

		/*var choices = Meteor.users.find({_id: Meteor.userId()}).choices;
		for (i = 0; i < chooseCount; i++) {
			Activities.update({_id:choices[i]}, {$dec: {order: 1}});
		}*/
		//Add the new top-chooseCount votes to the Activities master
		
		var choices = new Array();
		for (i = 0; i < chooseCount; i++) {
			var elem = $('.events')[i];
			console.log(elem);
			console.log(elem.id);
			Activities.update({_id:elem.id}, {$inc: {order: 1}});
			choices.push(elem.id);
		}

		//Meteor.users.find({username: {$ne: 'admin'}}, {sort:{"profile.skill":-1, username:1}})
		Meteor.users.update({_id: Meteor.userId()}, {$set: {choice: choices}}, {upsert:true});

		/*$('.events').each(function(index) {
			index++;
			console.log('The index of ' + this.id + ' is: ' + index);
			console.log(1/index);
			
		});*/
	},
	'submit #voting': function(event) {
		event.preventDefault();
		var newEvent = $('#newEvent').val();
		var newEventLower = newEvent.toLowerCase();
		console.log(newEventLower);
		var exists = Activities.findOne({eventLower: newEventLower});
		console.log(exists);
		if (!exists) {
			console.log('Inserting...');
			Activities.insert({event: newEvent, eventLower: newEventLower, order: 0});
		}
		$('#newEvent').val('');
	}
});

Template.eventVoting.onRendered( function() {
	var drake = dragula([document.querySelector('#list')]);
	drake.on('drop', function(el, container, source) {
		var index = $("li").index(el)- 1;
		//Meteor.call('updateActivities', el, index);
	});
});