board
placeDefaultTiles
	self defaultTiles doWithIndex: [ :aTile :index | self placeTile: aTile atPosition: index ] 