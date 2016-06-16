rendering
displayTiles: aCollectionOfTiles on: html
	^ aCollectionOfTiles
		do: [ :aTile | 
			(self game isWaitingForPlayerPlayAction and: [ self game currentPlayer canBuy: aTile ])
				ifTrue: [ 
					html anchor
						callback: [ self selectedTile: aTile ];
						with: [ 
									html image
										style: 'width: 75px; height: 75px;' , (self selectionStyle: aTile);
										url: aTile imageUrl ] ]
				ifFalse: [ 
					html image
						style: 'width: 75px; height: 75px; opacity: 0.6' , (self selectionStyle: aTile);
						url: aTile imageUrl ] ]