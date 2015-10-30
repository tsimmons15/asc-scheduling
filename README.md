# asc-scheduling
The Valencia ASC Scheduling/Leaderboard project
Version 0.7

The structure is as follows:

	/ root
		-	client
			-	lib
		-	html
		-	lib
		-	packages
		-	public
			-	images
		-	server

The root is the root of the project, the main directory.
Client stores the code which will run locally on the user's browser.
	No sensitive information should be hard-coded in this folder
	No code in this folder will, at time of launch, have access
		to the database or some specific features, for security reasons
	The client directory should be just .js files.
	Ignore lib, it's used by Bootstrap. Unless you need to modify the .less files
		In which case, do not ignore lib. It's used by Bootstrap.
Html will store the html templates
	The templates are (roughly) based on their function.
	If you have a better idea for the name of a file, go ahead and change it
		Make sure you update other references...
	I have the default CSS here, because it seemed the right fit.
Lib is sort of a catch-all for code
	It is neither the server, nor the client, but both.
	Do not assume you have access to any specific piece of data at all times
	Split into two files currently:
		common, which is mainly setting up the databases currently
		routes, which sets up the paging behavior of the website
			Currently using IronRouter
			If you change the name of any files, make sure you update
				routes.js
Packages is for specific packages installed and used by Meteor
	Ignore packages, for the most part
Public is public
	If/When we get images to upload, they will end up here
		inside images
		This is necessary for meteor's operation
Server is the JS server, the heart of Meteor
	The code ran here has implicit security. Code stored here has implicit
		security, but be mindful of what you store here anyway
	If you try to implement something in the client, and it fails due to permissions
		you will have to write a method or service on the Server
	If you cannot find code on the client, try looking in the Server
		Especially if it deals with the database or User settings
