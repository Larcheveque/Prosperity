as yet unclassified
gameComponent: aGameComponent
	super gameComponent: aGameComponent.
	energyLevelComponent gameComponent: self gameComponent.
	ecologyLevelComponent gameComponent: self gameComponent.
	pollutionLevelComponent gameComponent: self gameComponent.
	infrastructureComponent gameComponent: self gameComponent