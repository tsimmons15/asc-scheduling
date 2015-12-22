//The event handlers and helper functions for the code in the leaderboard.html file

//Helper functions for the displayHeader template
Template.displayHeader.helpers({
	//This handler stores where the logo is stored
	'logo': function() {
		return Meteor.call('find_logo');
	}
});

//Event handler for the displayHeader template
Template.displayHeader.events({
	//Logs the currently logged in user out
	'click .logout': function() {
		Meteor.logout();
	}	 
});

//Helper functions for the navItems template
Template.navItems.helpers({
	//Supposed to handle the "current page", so that the header shows more visually
	// what the currently active page
	//Takes the current template
	'activeIfTemplateIs': function(template) {
		//Get the current "route"
		var current = Router.current();
		//If the two templates are the same
		if (template == current.lookupTemplate()) {
			//Return the active class
			return 'active';
		} else {
			//return nothing
			return '';
		}
	}
});

//Helper function for home template
Template.home.helpers({
	//Returns whether the current user is an admin
	// At this moment doesn't work well...
	//  It will correctly identify the admin, but if the user isn't an admin, 
	//  it says the function is undefined...?
	'isAdmin': function() {
		var user = Meteor.user();
		return (user.username == 'admin');
	}
});

//Helper functions for the eventVoting template
Template.eventVoting.helpers({
	//Returns the list of activities currently in the database
    'activities': function() {
		return Activities.find({}, {sort: {order: -1}});
	}
});

//Event handler for the eventVoting template
Template.eventVoting.events({
	//The user has asked to submit a vote
	'submit #vote': function(event) {
		//Prevents the default event, which is to submit through POST or GET
		event.preventDefault();

		var id = Meteor.userId();
		var elements = [];
		$('#list').children().each(function(i, val) {
			console.log(this.id);
			console.log(this);
			console.log(i);
			elements[i] = this.id;
		});
		console.log(elements);
		Meteor.call('submit_vote', id, elements);
	},
	//The user has decided to try and create a new event
	'submit #voting': function(event) {
		event.preventDefault();
		var newEvent = $('#newEvent').val();
		var newEventLower = newEvent.toLowerCase();
		console.log(newEventLower);
		//I'm saving and checking for the lowercase version so that we know whether it's in the list already or not
		//Not yet really checking spelling or anything else
		//Maybe have human oversight?
		var exists = Activities.findOne({eventLower: newEventLower});
		console.log(exists);
		if (!exists) {
			console.log('Inserting...');
			Activities.insert({event: newEvent, eventLower: newEventLower, order: 0});
		}
		$('#newEvent').val('');
	}
});

//The onRender event call for the eventVoting function
//When the eventVoting template is rendered or re-rendered, this function happens
Template.eventVoting.onRendered( function() {
	//Sets up the un-ordered drag and drop capability using dragula
	//Dragula documentation is at: https://github.com/rfox90/meteor-dragula
	var drake = dragula([document.querySelector('#list')]);
	drake.on('drop', function(el, container, source) {
		var index = $("li").index(el)- 1;
	});
});
