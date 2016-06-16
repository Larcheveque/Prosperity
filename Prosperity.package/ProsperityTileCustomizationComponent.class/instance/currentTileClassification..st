as yet unclassified
currentTileClassification: html
	html
		form: [ 
			html select
				selected: (tile category ifNil: [ ProsperityTile categories first ]);
				list: ProsperityTile categories;
				onChange: 'submit()';
				callback: [ :category | tile category: category ].
			html select
				selected: (tile level ifNil: [ 1 ]);
				list: (1 to: 6);
				onChange: 'submit()';
				callback: [ :level | tile level: level ].
			html select
				selected: (tile type ifNil: [ ProsperityTile types first ]);
				list: ProsperityTile types;
				onChange: 'submit()';
				callback: [ :type | tile type: type ].
			html select
				selected: (tile domain ifNil: [ ProsperityTile domains first ]);
				list: ProsperityTile domains;
				onChange: 'submit()';
				callback: [ :domain | tile domain: domain ].
			html select
				selected: tile mainAspect;
				list: {nil} , ProsperityAspect aspects;
				onChange: 'submit()';
				callback: [ :aspect | tile mainAspect: aspect ] ]