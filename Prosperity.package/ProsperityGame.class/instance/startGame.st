initialization
startGame
	self remainingTiles: (ProsperityTile decadesTilesForNewGame).
	self availableTiles: (ProsperityTile globalTiles).
	self currentPlayer: self players first.
	self startTurn