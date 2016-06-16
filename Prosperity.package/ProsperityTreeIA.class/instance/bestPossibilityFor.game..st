as yet unclassified
bestPossibilityFor: aPlayer game: aGame
	| possibilities |
	possibilities := ((aGame availableTiles select: [ :aTile | aPlayer canBuy: aTile ])
		flatCollect: [ :aTile | aPlayer board tilesReplaceablesBy: aTile ]), #takeMoney, #cleanPollution, #increaseEcologyResearch, #increaseEnergyResearch.
	^ possibilities detectMax: [ :aPossibility | aGame simulatePossibility: aPossibility ]