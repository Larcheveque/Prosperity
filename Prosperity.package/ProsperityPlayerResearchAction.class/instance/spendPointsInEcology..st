as yet unclassified
spendPointsInEcology: anInteger 
	self player increaseEcologyResearch: anInteger.
	self researchPoints: self researchPoints - anInteger.
	self researchPoints <= 0 ifTrue: [ self game removeAction: self ]