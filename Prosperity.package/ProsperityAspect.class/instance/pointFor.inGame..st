as yet unclassified
pointFor: aProsperityPlayer inGame: anObject
	aProsperityPlayer pollutionLevel < 16
		ifTrue: [ aProsperityPlayer gainPoints: ((15 - aProsperityPlayer pollutionLevel) / 5) floor + aProsperityPlayer pointsLevel ]