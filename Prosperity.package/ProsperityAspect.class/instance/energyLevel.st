as yet unclassified
energyLevel
	^ self aspect = #energy
		ifTrue: [ 1 ]
		ifFalse: [ 
			self aspect = #consume
				ifTrue: [ -1 ]
				ifFalse: [ 0 ] ]