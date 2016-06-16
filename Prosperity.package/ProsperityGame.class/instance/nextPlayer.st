accessing
nextPlayer
	self
		currentPlayer:
			([ self players after: self currentPlayer ]
				on: NotFound
				do: [ self players first ]).
	self startTurn