initialization
initialize
	super initialize.
	self tiles: (Array new: self emplacements size).
	self pollutionLevel: 8.
	self placeDefaultTiles