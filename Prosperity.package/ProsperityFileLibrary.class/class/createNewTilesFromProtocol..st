as yet unclassified
createNewTilesFromProtocol: aProtocol
	ProsperityTile tiles
		addAll:
			((ProsperityFileLibrary selectorsInCategory: aProtocol)
				collect: [ :aSelector | 
					ProsperityTile new
						name: (aSelector allButLast: 3);
						yourself ])