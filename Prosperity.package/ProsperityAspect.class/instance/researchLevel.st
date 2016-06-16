as yet unclassified
researchLevel
	^ self aspect = #research
		ifTrue: [ 1 ]
		ifFalse: [ 0 ]