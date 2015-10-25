Template.signin.helpers({
	
});

Template.register.helpers({
	
});

Template.signin.events({
	'submit form': function(event) {
		event.preventDefault();
	}
});

Template.register.events({
	'submit form':function(event) {
		event.preventDefault();
	}
});

Template.signin.onRendered(function() {
	var validator = $('.login').validate({
		messages: {
			user: {
				required: "You must enter your username/email address"
			},
			password: {
				required: "You must enter your password",
				minlength: "Your password is at least {0} characters long."
			}
		},
		submitHandler: function (event) {
			var user = $('[name=user]').val();
			var pass = $('[name=password]').val();
			Meteor.loginWithPassword(user, pass, function(error) {
				if (error) {
					console.log(error.reason);
					if (error.reason == "User not found") {
						validator.showErrors({
							user: error.reason
						});
					} 
					if (error.reason == "Incorrect password") {
						validator.showErrors({
							password: error.reason
						});
					}
				} else {
					var currentRoute = Router.current().route.getName();
					if (currentRoute == 'login') {
						Router.go('home');
					}
				}
			});
		}
	});
});

Template.register.onRendered(function() {
	var validator = $('.register').validate({ 
		messages: {
			firstName: {
				required: "You must enter your first name"
			},
			lastName: {
				required: "You must enter last name",
			},
			userID: {
				required: "You must enter your VID",
				minlength: "VIDs are at least {0} characters long."
			}
		},
		submitHandler: function (event) {
			var firstName = $('[name=firstName]').val();
			var lastName = $('[name=lastName]').val();
			//var department = $('[name=department]').val();
			var vid = $('[name=userID]').val();
			/*
				Using Accounts.sendEnrollmentEmail(),
				we can create accounts without passwords
				Admin will create the account, the user will
				get the email, and get full control over account
			*/
			Accounts.createUser({
				username:firstName,
				password: 'password',
				profile: {
					gamesPlayed: 0,
					department: ' ',
					rank:0,
					skill: [25.0, 25.0/3.0]
				}
			}, function(error) {
				if(error) {
					if (error.reason == "Username already exists.") {
						validator.showErrors({
							user: error.reason
						});
					}
				} else {
					Router.go('home');
				}
			});
			$('[name=userID]').val('');
			$('[name=lastName]').val('');
			$('[name=firstName]').val('');
		}
	});
});