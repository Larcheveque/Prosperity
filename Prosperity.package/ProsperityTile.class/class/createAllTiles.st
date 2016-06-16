as yet unclassified
createAllTiles
	^ (ProsperityFileLibrary selectorsInCategory: 'global-tiles') collect: [ :aName | self new name: (aName allButLast: 3); yourself ]