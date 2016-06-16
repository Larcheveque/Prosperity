as yet unclassified
evaluateEnergyImportance: aProsperityPlayer 
	^ ((3 - aProsperityPlayer energyLevel ) * (aProsperityPlayer pollutionLevel / 5) squared) - (aProsperityPlayer ecologyLevel / 2) max: 1