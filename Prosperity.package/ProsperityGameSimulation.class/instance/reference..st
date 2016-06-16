accessing
reference: aRef
	reference := aRef.
	self flag: #TODO. "change copy to smart diff model".
	self players: (aRef players collect: #copy).
	self remainingTiles: (aRef remainingTiles copy).
	self availableTiles: (aRef availableTiles copy).
	self currentPlayer: (self players detect:[:p | p isSimulationOf: aRef currentPlayer]).
	self remainingActionForCurrentPlayer: aRef remainingActionForCurrentPlayer.
	self actions: aRef actions copy