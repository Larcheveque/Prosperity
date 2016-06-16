as yet unclassified
pointsLevel
	^ self aspects ifEmpty: [ 0 ] ifNotEmpty: [ self aspects sum: #pointsLevel ]