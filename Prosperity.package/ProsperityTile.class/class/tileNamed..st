as yet unclassified
tileNamed: aName
	^ self tiles detect: [ :tile | tile name = aName ]