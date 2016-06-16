as yet unclassified
automaticResolution
	self player isComputer
		ifTrue: [ self player resolveAction: self ]
		ifFalse: [ ProsperityHumanDecisionWaiting signal ]