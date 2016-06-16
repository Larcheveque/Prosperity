as yet unclassified
evaluateEcologyImportance: aProsperityPlayer
	^ (3 - aProsperityPlayer ecologyLevel) * (aProsperityPlayer pollutionLevel / 5) squared
		- (aProsperityPlayer energyLevel / 2 max: 1) max: 1