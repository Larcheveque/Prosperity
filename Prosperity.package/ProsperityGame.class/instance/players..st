accessing
players: anObject
	players := anObject.
	self players do: [ :aPlayer | aPlayer game: self ].
	self startGame