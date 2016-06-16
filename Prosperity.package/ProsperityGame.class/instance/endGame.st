end
endGame
	currentPlayer := nil.
	#(#energy #energy #env #env #capital)
		do: [ :asp | 
			| aspect |
			aspect := ProsperityAspect perform: asp.
			self players do: [ :aPlayer | aspect executeFor: aPlayer inGame: self ] ].
	self players do: #transformCapitalToPoints.
	self players do: [ :aPlayer | ProsperityAspect research executeFor: aPlayer inGame: self ].
	self givePointsForResearchToPlayers.
	self players do: [ :aPlayer | ProsperityAspect point executeFor: aPlayer inGame: self ]