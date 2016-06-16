as yet unclassified
adjustPollution: anInteger
	self pollutionLevel: self pollutionLevel + anInteger.
	self pollutionLevel < 0
		ifTrue: [ 
			| gain |
			gain := self pollutionLevel abs * 50.
			self pollutionLevel: 0.
			ProsperityMoneyBonus signalWithMoney: gain ]