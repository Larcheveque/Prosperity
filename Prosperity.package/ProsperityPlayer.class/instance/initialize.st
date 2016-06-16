as yet unclassified
initialize
	super initialize.
	self money: 100.
	self energyResearchLevel: 1.
	self ecologyResearchLevel: 1.
	self board: ProsperityEasyBoard new.
	self points: 0