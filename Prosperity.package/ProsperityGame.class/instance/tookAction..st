as yet unclassified
tookAction: aProsperityPlayer
	self assert: aProsperityPlayer = self currentPlayer.
	self actions removeFirst.
	remainingActionForCurrentPlayer := remainingActionForCurrentPlayer - 1.
	remainingActionForCurrentPlayer = 0
		ifTrue: [ self nextPlayer ]