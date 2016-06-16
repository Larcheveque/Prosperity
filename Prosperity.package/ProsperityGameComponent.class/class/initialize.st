class initialization
initialize
	app := WAAdmin register: self asApplicationAt: 'Prosperity'.
	app
		addLibrary: JQDeploymentLibrary 