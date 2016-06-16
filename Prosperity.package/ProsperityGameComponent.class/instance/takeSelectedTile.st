as yet unclassified
takeSelectedTile
	| tile |
	tile := researchAndPointsComponent selectedTile.
	researchAndPointsComponent selectedTile: nil.
	^ tile