//Helper functions for the login template
Template.show_modal_reset.helpers({
	'modal_reset_password': function() {
		
	}
});

//Helper functions for the resetPassword template
Template.change_password.helpers({
	'userInfo': function() {
		return Meteor.user();
	}
});

//Event handlers for the resetPassword template
Template.change_password.events({
	//They've submitted the change of password form
	//Handled in validator below
	'submit form': function(event) {
		event.preventDefault();
	}, 
	'click #change_cancel': function(event) {
		event.preventDefault();
		
		$('#change_reenter_password').val('');
		$('#change_current_password').val('');
		$('#change_new_password').val('');
		$('#change_password_modal').modal('hide');
	}
});

//Helper functions for the signin template
Template.signin.helpers({
	
});

//Event handlers for the signin template
Template.signin.events({
	'submit form': function(event) {
		event.preventDefault();
	},
	'click a': function(event) {
		event.preventDefault();
		console.log('Lost password?');
		$("#recover_password_modal").modal("show");
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

Template.reset_password.events({
	'submit form':function(event) {
		event.preventDefault();
		//Check to see if a registered user is already registered?
	}
});

Template.recover_password.events({
	'submit form': function(event) {
		event.preventDefault();
	}
});

Template.show_modal_reset.onRendered(function() {
	if (Session.get('reset_password')) {
		console.log('Showing modal...');
		Session.set('reset_password', null);
		$('#reset_password_modal').modal('show');
	}
});

//Function that is ran when the signin template is loaded
Template.signin.onRendered(function() {
	//Double check the names/ids of the HTML elements associated with the below
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
						username: email,
						email: email+'@valenciacollege.edu',
						//Randomly generate better password, for initial login...
						password: 'password',
						profile: {
							first_name: firstName,
							surname:   lastName,
							gamesPlayed: 0,
							department: ' ',
							office: '4-100',
							image: 'blank.jpg',
							rank:0,
							skill: [25.0, 25.0/3.0],
							//The start and end of the user's shift
							//This will probably be filled in with Tonny's port
							shift: [0 , 0],
							//The choice most recently made by the 
							//  user for event voting
							choices: []
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
								Meteor.call('userEnroll', userID);
							Router.go('home');
						}
					});
			//Clear the values, for the hell of it
			$('[name=email]').val('');
			$('[name=lastName]').val('');
			$('[name=firstName]').val('');
		}
	});
});



$.validator.addMethod('change_passwords_match', 
	function (value, element){
		return ($("#change_new_password").val() == value);
}, "New Password and re-entered password must match");
$.validator.addMethod('reset_passwords_match', 
	function (value, element){
		return ($("#reset_new_password").val() == value);
}, "New Password and re-entered password must match");

//Rendering function for resetPassword template
Template.change_password.onRendered(function() {
	var validator = $(".change_password_form").validate({
		rules: {
			change_current_password: {
				required: true
			},
			change_new_password: {
				required: true
			},
			change_reenter_password: {
				required: true,
				change_passwords_match: true
			}
		},
		messages: {
			change_current_password: {
				required: "You must fill in all parts"
			},
			change_new_password: {
				required: "You must fill in all parts"			
			},
			change_reenter_password: {
				required: "You must fill in all parts"
			}
		},
		submitHandler: function(event) {
			var reenter = $('#change_reenter_password');
			var current = $('#change_current_password');
			var new_password = $('#change_new_password');
			//Check that the current matches the user's current password
			//If they match, go ahead and change the password
			console.log(current.val());
			console.log(new_password.val());
			Accounts.changePassword(current.val(), new_password.val(),
				function(error) {
					if(error)
						console.log(error);
			});
			current.val('');
			new_password.val('');
			reenter.val('');
			$('#change_password_modal').modal('hide');
		}
	});

});

//Rendering function for resetPassword template
Template.reset_password.onRendered(function() {
	var validator = $(".reset_password_form").validate({
		rules: {
			reset_new_password: {
				required: true
			},
			reset_reenter_password: {
				required: true,
				reset_passwords_match: true
			}
		},
		messages: {
			reset_new_password: {
				required: "You must fill in all parts"			
			},
			reset_reenter_password: {
				required: "You must fill in all parts"
			}
		},
		submitHandler: function(event) {
			var password = $("#reset_new_password").val();
			var token = Session.get('verification_token');
			Session.set('verification_token', null);
			Accounts.resetPassword(token, password, function(error) {
				if(error)
					console.log(error);
				else
					$('#reset_password_modal')
						.on('hidden.bs.modal', function(event) {
							Router.go('/');
					}).modal('hide');
			});
		}
	});

});

Template.recover_password.onRendered(function() {
	var validator = $(".recover_password_form").validate({
		messages: {
			recovery_email: {
				required: "You must enter an email address"
			}
		},
		submitHandler: function(event) {
			var email = $("#recover_email").val();

			console.log("Starting recovery process");
			
			Accounts.forgotPassword({'email':email}, function(error) {
				if (error)
					console.log(error);
			});
		}
	});
});

/*Accounts.onResetPasswordLink(function(verificationToken, done) {
	Session.set('verification_token', verficationToken);
	Router.go('/reset-password');
});*/
