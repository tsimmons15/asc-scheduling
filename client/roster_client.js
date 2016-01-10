//This is the client-side implementation of the recess roster built
// by Tonny

Template.chosen_list.onCreated(function() {
	var self = this;
    self.resources = new ReactiveVar(null);
    Meteor.call("timeSlots", this.data.timeslot, function(error, list) {
      if (!error) {
        self.resources.set(list);
      } else {
         console.log(error);
      }
    });

});

//The helper functions for the chosen_list template
Template.chosen_list.helpers({
	'getList': function() {
		console.log('Testing...');
		console.log(Template.instance().resources.get());
		return Template.instance().resources.get();
	}
});

//The helper functions for the roster template
Template.roster.helpers({
	'testing': function() {
		var ret = players.filter(function(player) {
				  	return true;
				  });
		console.log(ret);
		return ret;
	}
});
