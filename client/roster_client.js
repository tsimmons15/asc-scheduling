//This is the client-side implementation of the recess roster built
// by Tonny

Template.chosen_list.onCreated(function() {
	var self = this;
    Meteor.call("timeSlots", this.data.timeslot, function(error, list) {
      if (!error) {
      	console.log('onCreated');
        self.resources = list;
        console.log(self.resources);
      } else {
         console.log(error);
      }
    });

});

//The helper functions for the chosen_list template
Template.chosen_list.helpers({
	'getList': function() {
		if(!Template.instance().resources)
			return [];
		console.log(Template.instance().resources.get().curValue);
		return Template.instance().resources.get().curValue;
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
