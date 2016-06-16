as yet unclassified
initialize
	app := WAAdmin register: self asApplicationAt: 'ProsperityTilesCustom'.
	app
		addLibrary: JQDeploymentLibrary 