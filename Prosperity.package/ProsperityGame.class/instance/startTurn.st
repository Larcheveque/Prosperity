accessing
startTurn
	| newTile |
	self remainingTiles
		ifNotEmpty: [ 
			newTile := self remainingTiles pop.
			self availableTiles add: newTile.
			self players do: [ :aPlayer | newTile mainAspect executeFor: aPlayer inGame: self ].
			self addBlockingAction: (ProsperityPlayerPlayAction player: self currentPlayer game: self).
			self addBlockingAction: (ProsperityPlayerPlayAction player: self currentPlayer game: self).
			self automaticResolutionForActions ]
		ifEmpty: [ self endGame ]