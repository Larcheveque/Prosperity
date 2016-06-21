as yet unclassified
tiles
	^ tiles ifNil: [ self loadTiles. tiles ]