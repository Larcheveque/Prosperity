as yet unclassified
capitalLevel
	^ self aspects ifEmpty: [ 0 ] ifNotEmpty: [ self aspects sum: #capitalLevel ]