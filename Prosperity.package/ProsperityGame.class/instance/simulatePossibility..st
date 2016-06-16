simulation
simulatePossibility: aPossibility
	^ self createSimulation
		executePossibility: aPossibility forPlayer: self currentPlayer;
		yourself