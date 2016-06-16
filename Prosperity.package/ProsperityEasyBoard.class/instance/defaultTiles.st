as yet unclassified
defaultTiles
	^ #(#StartingCentrale #EmptyInfrastructure #StartingIndustry #EmptyCentrale #StartingLine #StartingResearch #StartingGreen #Blank #StartingRoad #EmptyInfrastructure #EmptyInfrastructure #EmptyInfrastructure)
		collect: [ :aName | 
			[ ProsperityTile tileNamed: aName ]
				on: NotFound
				do: [ ProsperityTile blank ] ]