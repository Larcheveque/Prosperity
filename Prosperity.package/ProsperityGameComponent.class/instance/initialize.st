as yet unclassified
initialize
	super initialize.
	researchAndPointsComponent := ProsperityResearchComponent gameComponent: self.
	playerBoardComponent := ProsperityPlayerBoardComponent gameComponent: self.
	self game