execution
researchFor: aProsperityPlayer inGame: aGame
	aGame
		addBlockingAction:
			(ProsperityPlayerResearchAction player: aProsperityPlayer game: aGame researchPoints: aProsperityPlayer researchLevel)