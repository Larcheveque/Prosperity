as yet unclassified
placeTile: aTile atPosition: index
	self assert: (self tile: aTile isValideAt: index).
	self tiles at: index put: aTile