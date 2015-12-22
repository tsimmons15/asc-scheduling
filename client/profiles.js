//Helper functions for the user's profile template
Template.userProfile.helpers({
	//Return whether the user is a verified user
	 'verified': function() {
		return Meteor.user().emails[0].verified;
	 }
});

Template.userProfile.events({
	'click #resetPassword': function() {
		console.log('Testing, resetPassword clicked');
		console.log(Meteor.userId());
		Router.go('reset_password');
	}
});

//Your guess is as good as mine...
Template.profile.helpers({
	 'user': function() {
		 return "Test";
	 }
});
