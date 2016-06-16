as yet unclassified
createNewTilesFromProtocol: aProtocol decade: aDecade
	ProsperityTile tiles
		addAll:
			((ProsperityFileLibrary selectorsInCategory: aProtocol)
				collect: [ :aSelector | 
					ProsperityTile new
						name: (aSelector allButLast: 3);
						category: aDecade;
						yourself ])