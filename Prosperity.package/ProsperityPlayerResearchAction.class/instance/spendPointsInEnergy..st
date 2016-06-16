as yet unclassified
spendPointsInEnergy: anInteger
	self player increaseEnergyResearch: anInteger.
	self researchPoints: self researchPoints - anInteger.
	self researchPoints <= 0
		ifTrue: [ self game removeAction: self ]