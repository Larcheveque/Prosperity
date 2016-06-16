as yet unclassified
energyFor: aProsperityPlayer inGame: anObject
	| energyLevel |
	energyLevel := aProsperityPlayer energyLevel.
	energyLevel >= 0
		ifTrue: [ aProsperityPlayer gainMoney: energyLevel * 50 ]
		ifFalse: [ 
			self flag: 'Should ask for choice'.
			aProsperityPlayer increasePollution: energyLevel abs ]