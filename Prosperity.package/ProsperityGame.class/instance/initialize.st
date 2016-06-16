initialization
initialize
	super initialize.
	self remainingTiles: (ProsperityTile decadesTilesForNewGame).
	self availableTiles: (ProsperityTile globalTiles).
	self actions: OrderedCollection new