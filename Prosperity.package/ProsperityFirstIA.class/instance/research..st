as yet unclassified
research: aProsperityPlayer
	self flag: #TODO.
	#(true false) atRandom
		ifTrue: [ aProsperityPlayer increaseEnergyResearch: aProsperityPlayer researchLevel ]
		ifFalse: [ aProsperityPlayer increaseEcologyResearch: aProsperityPlayer researchLevel ]