rendering
displayEnergyTiles: html
	| maxWidth |
	maxWidth := 0.
	html div
		style: 'position: absolute; width: 600px';
		with: [ 
					((self availableTiles select: #isEnergy) groupedBy: #level)
						keysAndValuesDo: [ :aLevel :aCollectionOfTiles | 
							html div
								class: #energy , aLevel asString;
								style: 'position: absolute; top:' , (self decForLevel: aLevel) asString , 'px;';
								with: [ 
											maxWidth := maxWidth max: aCollectionOfTiles size.
											self displayTiles: aCollectionOfTiles on: html ] ] ].
	^ maxWidth * 75