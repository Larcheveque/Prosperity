as yet unclassified
renderContentOn: html
	html table
		with: [ 
			0 to: 3 do: [ :y | 
				html
					tableRow: [ 
						1 to: 3 do: [ :x | 
							html tableData
								with: [ 
									| tile |
									tile := self board tilesAt: y * 3 + x.
									(self gameComponent hasSelectedTile
										and: [ self player isActive and: [ self board tile: self gameComponent selectedTile isValideAt: y * 3 + x ] ])
										ifTrue: [ 
											html anchor
												callback: [ self player buyTile: self gameComponent takeSelectedTile atBoardPosition: y * 3 + x ];
												with: [ 
															html image
																style: 'border:solid; width: 75px; height: 75px;';
																url: tile imageUrl ] ]
										ifFalse: [ 
											html image
												style: 'border:solid; width: 75px; height: 75px;';
												url: tile imageUrl ] ] ] ] ] ]