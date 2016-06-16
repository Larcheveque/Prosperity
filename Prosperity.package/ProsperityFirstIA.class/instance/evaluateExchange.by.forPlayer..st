ia
evaluateExchange: aProsperityTile by: aProsperityTile2 forPlayer: aProsperityPlayer
	| note factor pollutionLimit |
	note := ((aProsperityTile priceForPlayer: aProsperityPlayer) / 100) negated.
	aProsperityTile name = #StartingGreen
		ifTrue: [ note := note + 2 ].
	{(#energyLevel -> (self evaluateEnergyImportance: aProsperityPlayer)).
	(#ecologyLevel -> (self evaluateEcologyImportance: aProsperityPlayer)).
	(#capitalLevel -> (self evaluateCapitalImportance: aProsperityPlayer))}
		do: [ :anAspect | 
			factor := ((aProsperityTile2 perform: anAspect key) - (aProsperityTile perform: anAspect key)) * anAspect value.
			note := note + factor ].
	pollutionLimit := aProsperityPlayer pollutionLevel - (aProsperityPlayer energyLevel min: 0)
		- aProsperityPlayer ecologyLevel.
	{(#pointsLevel -> (15 * (36 / (aProsperityPlayer game remainingTiles size + 1)))).
	(#researchLevel -> (self evaluateResearchImportance: aProsperityPlayer))}
		do: [ :anAspect | 
			factor := ((aProsperityTile2 perform: anAspect key) - (aProsperityTile perform: anAspect key)) * anAspect value.
			note := note + factor ].
	^ note