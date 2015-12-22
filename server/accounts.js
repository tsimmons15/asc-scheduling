//Allows the sending of verification/enrollment emails?
Accounts.config({
	//Might need to include sendEnrollmentEmail: true, 
	//Seems to work though...
	sendVerificationEmail: true, 
	forbidClientAccountCreation: false
	}
);

//Template taken from Meteor Documentation:
//http://docs.meteor.com/#/full/Accounts-onEmailVerificationLink

Accounts.emailTemplates.siteName = "AwesomeSite";

Accounts.emailTemplates.from = "AwesomeSite Admin <accounts@example.com>";

//Overrides subject and text for enrolling an account only
Accounts.emailTemplates.enrollAccount.subject = function (user) {
    return "Welcome to Awesome Town, " + user.profile.name;
};
Accounts.emailTemplates.enrollAccount.text = function (user, url) {
   return "You have been selected to participate in building a better future!"
     + " To activate your account, simply click the link below:\n\n"
     + url;
};

//Overrides subject and text for enrolling an account only
Accounts.emailTemplates.verifyEmail.subject = function (user) {
    return "Welcome to Awesome Town, " + user.profile.name;
};

//Set up custom URL for verification/enrollment Email
//Will be used when we launch to send them to our new location, if I gather correctly...
//Modify the url parameter
//Currently sends to Server's console, since the mail server isn't specified
Accounts.emailTemplates.verifyEmail.text = function (user, url) {
   enrollLink = "http://localhost:3000/verify-email/" + url.split('/')[5];
   //Change the message to whatever it needs to be...
   return "You have been selected to participate in building a better future!"
     + " To activate your account, simply click the link below:\n\n"
     + enrollLink;
};

//Same as above, but for resetting the user's password
Accounts.emailTemplates.resetPassword.text = function (user, url) {
   enrollLink = "http://localhost:3000/reset-password/" + url.split('/')[5];
   //Change the message to whatever it needs to be...
   return "In order to change your password, click the link below:\n\n"
     + enrollLink;
};

Meteor.methods({
	//Send the enrollment email, since a user has tried to register...
	'userEnroll': function(userID) {
		Accounts.sendEnrollmentEmail(userID);
	}
});

