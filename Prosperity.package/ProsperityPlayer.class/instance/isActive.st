testing
isActive
	^ self = self game currentPlayer and: [ self game isWaitingForPlayerPlayAction ]