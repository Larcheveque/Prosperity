ia
tilesReplaceablesBy: aProsperityTile 
	| replaceables |
	replaceables:= OrderedCollection new.
	self tiles doWithIndex: [ :aTile :i | (self tile: aProsperityTile isValideAt: i) ifTrue: [ replaceables add: aProsperityTile->aTile ] ].
	^ replaceables