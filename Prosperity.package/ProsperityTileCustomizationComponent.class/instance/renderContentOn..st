as yet unclassified
renderContentOn: html
	tile ifNil: [ tile := ProsperityTile tiles first ].
	html heading: 'Choose tile'.
	html
		form: [ 
			html select
				selected: tile;
				list: ProsperityTile tiles;
				onChange: 'submit()';
				callback: [ :selectedTile | tile := selectedTile ] ].
	html break.
	html image url: tile imageUrl.
	html break.
	html heading: 'Change tile'.
	self currentTileClassification: html.
	html text: 'Tile aspects:'.
	tile aspects do: [ :anAspect | html image url: anAspect imageUrl ].
	html break.
	html text: 'Add tile aspect:'.
	ProsperityAspect aspects
		do: [ :anAspect | 
			html anchor
				callback: [ tile addAspect: anAspect ];
				with: [ html image url: anAspect imageUrl ] ]