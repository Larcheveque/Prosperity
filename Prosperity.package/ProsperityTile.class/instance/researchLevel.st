research
researchLevel
	^ self aspects ifEmpty: [ 0 ] ifNotEmpty: [ self aspects sum: #researchLevel ]