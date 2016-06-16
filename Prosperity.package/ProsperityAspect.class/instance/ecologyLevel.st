as yet unclassified
ecologyLevel
	^ self aspect = #environment
		ifTrue: [ 1 ]
		ifFalse: [ 
			self aspect = #pollution
				ifTrue: [ -1 ]
				ifFalse: [ 0 ] ]