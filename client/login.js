//Helper functions for the signin template
Template.signin.helpers({
	
});

//Event handlers for the signin template
Template.signin.events({
	'submit form': function(event) {
		event.preventDefault();
	}
});

//Helper functions for the register template
Template.register.helpers({
	//Stuff...?
});

Template.register.events({
	'submit form':function(event) {
		event.preventDefault();
		//Check to see if a registered user is already registered?
	}
});

//Function that is ran when the signin template is loaded
Template.signin.onRendered(function() {
	//It's supposed to help validate the data, but I've noticed it doesn't seem to work all that well...
	//No idea why
	var validator = $('.login').validate({
		//Messages to display when the various fields contain issues
		messages: {
			user: {
				required: "You must enter your username/email address"
			},
			password: {
				required: "You must enter your password",
				minlength: "Your password is at least {0} characters long."
			}
		},
		//In-between for when they try to submit
		submitHandler: function (event) {
			var user = $('[name=user]').val();
			var pass = $('[name=password]').val();
			//Try to login, using the default Meteor.Accounts system
			Meteor.loginWithPassword(user, pass, function(error) {
				//The standard NodeJS callback function
				//Check to see if there's an error
				if (error) {
					//Log the reason for our checks, remove by the time it's ready
					console.log(error.reason);
					if (error.reason == "User not found") {
						//Show the error next to the offending entry
						validator.showErrors({
							user: error.reason
						});
					} 
					if (error.reason == "Incorrect password") {
						validator.showErrors({
							password: error.reason
						});
					}
					//Probably should add more reasons, this is nowhere near an exhaustive list from what I've heard
				} else {
					//If there are no errors, login the user
					//The nice thing about Router is it can handle saving where you were before you were re-routed
					var currentRoute = Router.current().route.getName();
					if (currentRoute == 'login') {
						//If you were at the login page, just go home
						Router.go('home');
					}
					//Can't remember if there's more to the re-routing...
				}
			});
		}
	});
});

//Rendering function for register template
Template.register.onRendered(function() {
	var userID = 0, genPassword = 0;
	//Same as above
	var validator = $('.register').validate({ 
		messages: {
			firstName: {
				required: "You must enter your first name"
			},
			lastName: {
				required: "You must enter last name"
			},
			email: {
				required: "You must enter your @valenciacollege.edu email"
			}
		},
		submitHandler: function (event) {
			var firstName = $('[name=firstName]').val();
			var lastName = $('[name=lastName]').val();
			var email = $('[name=email]').val();
			/*
				Using Accounts.sendEnrollmentEmail(),
				we can create accounts without passwords
				Admin will create the account, the user will
				get the email, and get full control over account
			*/
			userID = Accounts.createUser({
						email: email,
						//username: username,
						//Randomly generate better password, for initial login...
						password: 'password',
						profile: {
							gamesPlayed: 0,
							department: ' ',
							rank:0,
							skill: [25.0, 25.0/3.0],
							//The start and end of the user's shift
							//This will probably be filled in with Tonny's port
							shift: [0 , 0]
						}
					}, function(error) {
						if(error) {
							if (error.reason == "Username already exists.") {
								validator.showErrors({
									user: error.reason
								});
							}
						} else {
							if (userID != 0)
								Methods.call('userEnroll', userID, genPassword);
							Router.go('home');
						}
					});
			//Clear the values, for the hell of it
			$('[name=userID]').val('');
			$('[name=lastName]').val('');
			$('[name=firstName]').val('');
		}
	});
});


Accounts.onEnrollmentLink(function(token, done) {
	console.log(token);
	console.log(done);
});