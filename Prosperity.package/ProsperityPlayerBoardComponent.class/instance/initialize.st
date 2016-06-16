as yet unclassified
initialize
	super initialize.
	energyLevelComponent := ProsperityEnergyLevelComponent gameComponent: self gameComponent.
	ecologyLevelComponent := ProsperityEcologyLevelComponent gameComponent: self gameComponent.
	pollutionLevelComponent := ProsperityPollutionLevelComponent gameComponent: self gameComponent.
	infrastructureComponent := ProsperityInfrastructureComponent gameComponent: self gameComponent