rendering
displayEcologyTiles: html dec: aDec
	html div
		style: 'position: absolute; width: 600px; left: ' , (225 + aDec) asString , 'px;';
		with: [ 
					((self availableTiles select: #isEcology) groupedBy: #level)
						keysAndValuesDo: [ :aLevel :aCollectionOfTiles | 
							html div
								class: #energy , aLevel asString;
								style: 'position: absolute; top:' , (self decForLevel: aLevel) asString , 'px;';
								with: [ self displayTiles: aCollectionOfTiles on: html ] ] ]