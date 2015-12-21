//The event handlers and helper functions for the code in the leaderboard.html file

//Helper functions for the displayHeader template
Template.displayHeader.helpers({
	//This handler stores where the logo is stored
	'logo': function() {
		//If this needs to change, just make sure it is still in images
		return "/images/valencialogo.png";
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

		//chooseCount will be implemented as an admin option in the future
		var chooseCount = 4;

		//Find and remove the previous vote in the Activities master-list

		//This is my attempt to try and get a hang on why this isn't yet working
		console.log(Meteor.users.find({_id: Meteor.userId()}).fetch());
		console.log(Meteor.users.find({_id: Meteor.userId()}, {"profile.choices": 1}).fetch());

		//We would want to do something like this, only with {$dec: {order:1}} replaced with a call to the user's profile
		//We want to be able to decrease the vote by the weight of their vote
		/*var choices = Meteor.users.find({_id: Meteor.userId()}).choices;
		for (i = 0; i < chooseCount; i++) {
			Activities.update({_id:choices[i]}, {$dec: {order: 1}});
		}*/
		
		//Add the new top-chooseCount votes to the Activities master
		//At the same time, keep track of what the order of votes was, so that you can add that to the user's profile
		var choices = new Array();
		for (i = 0; i < chooseCount; i++) {
			var elem = $('.events')[i];
			console.log(elem);
			console.log(elem.id);
			Activities.update({_id:elem.id}, {$inc: {order: 1}});
			//Stacks are FILO, so if push is a FILO operation, might want to change it
			//Can't remember why I used push and not just normal array access
			choices.push(elem.id);
		}

		//This is the part which is causing problems since the updating of Meteor
		//Tells us the users account is unaccessible from the client
		//In common.js, there should be code to allow us to do this...
		//Try adding to to the top of this file?
		//Meteor.users.find({username: {$ne: 'admin'}}, {sort:{"profile.skill":-1, username:1}})
		Meteor.users.update({_id: Meteor.userId()}, {$set: {choice: choices}}, {upsert:true});

		//Testing, probably fine to get rid of once it's finally working
		/*$('.events').each(function(index) {
			index++;
			console.log('The index of ' + this.id + ' is: ' + index);
			console.log(1/index);
			
		});*/
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