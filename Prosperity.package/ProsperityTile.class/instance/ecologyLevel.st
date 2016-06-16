as yet unclassified
ecologyLevel
	^ self aspects ifEmpty: [ 0 ] ifNotEmpty: [ self aspects sum: #ecologyLevel ]