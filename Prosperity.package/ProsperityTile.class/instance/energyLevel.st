as yet unclassified
energyLevel
	^ self aspects ifEmpty: [ 0 ] ifNotEmpty: [ self aspects sum: #energyLevel ]