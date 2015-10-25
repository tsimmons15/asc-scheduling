Router.route('/', {
	name: 'home',
	template: 'home',
	onBeforeAction: function() {
		var currentUser = Meteor.userId();
		if (currentUser) {
			this.next();
		} else {
			this.render('login');
		}
	}
});
Router.route('/login', {
	name: 'login',
	template: 'login'
});

Router.route('/tournaments', {
	name: 'tournament',
	template: 'tournament'
});

Router.route('/profiles', {
	name:'profiles',
	template:'profiles'
});

Router.route('/profile/:_id', {
	name:'profile',
	template: 'profile',
	data: function() {
		return Meteor.users.findOne({_id:this.params._id});
	}
});

Router.route('/admin', {
	name: 'admin',
	template: 'admin', 
	data: function() {
		return Meteor.userId();
	}
});

Router.configure({
	layoutTemplate: 'layout',
	loadingTemplate: 'loading'
});