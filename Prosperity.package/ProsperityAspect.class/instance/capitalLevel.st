as yet unclassified
capitalLevel
	^ self aspect = #capital
		ifTrue: [ 100 ]
		ifFalse: [ 0 ]