//This file handles the routing behavior of MeteorJS
// By default, MeteorJS is just a collection of static pages
// This is not how a user expects to use a site, and makes it harder to share content of different types
// Hence, IronRouter.

//As of right now, the webpage is simply: 'localhost:3000', the default homepage
//I will abreviate below as root/ so I never have to change the comments below, just the webpage above

//This is for the default 'home', or just root/
Router.route('/', {
	//The template is called home, so if you need to route to the 'main' page, route to home
	name: 'home',
	//The template that will be displayed is called 'home'
	//IronRouter will search the HTML templates for a template with name="home", and display it
	//Template should be in leaderboard.html
	template: 'home',
	//Before actually loading the page,
	onBeforeAction: function() {
		//Check whether the user is logged in
		var currentUser = Meteor.userId();
		
		if (currentUser) {
			//If yes, continue
			this.next();
		} else {
			//If no, re-route to login
			//After login is finished, it should continue? If I understand correctly
			this.render('login');
		}
	}
});

//Route for the login page, gotten to by 
// directing to root/login
Router.route('/login', {
	name: 'login',
	//The template should be in login.html
	template: 'login'
});

//Route for the tournament page, gotten to by
// directing to root/tournaments
Router.route('/tournaments', {
	name: 'tournament',
	//The template should be in tournaments.html
	template: 'tournament'
});

//Route for the list of employee profiles
// root/profiles
Router.route('/profiles', {
	name:'profiles',
	//The template currently does not exist
	//The closest we have currently is the currentStandings template in tournaments.html
	//Will probably get used in the future, depending on how the project unfolds
	//Until then, probably don't reference this
	template:'profiles'
});

//This is the page for an individual employee
// root/profile/<id>
// The :_id means it will capture whatever is typed in, and will be used in the query to the database
// Probably should change this to make it a little more user-friendly...? Ideas?
Router.route('/profile/:_id', {
	name:'profile',
	
	template: 'profile',
	data: function() {
		return Meteor.users.findOne({_id:this.params._id});
	}
});

//This is the page for the admin console, which is not currently fully implemented
// root/admin
Router.route('/admin', {
	name: 'admin',
	template: 'admin', 
	data: function() {
		return Meteor.userId();
	}
});

//Configures the Router
//Layout is a basic layout: the top nav bar, and the content below
//A loading screen, if it becomes necessary, flush it out with more content...
Router.configure({
	//Unlike the previous, don't go to root/layout
	//It's a layout for each page
	//layout is located in leaderboard.html
	layoutTemplate: 'layout',
	//Loading/splash screen, not really filled out yet
	// Is located in leaderboard.html
	loadingTemplate: 'loading'
});