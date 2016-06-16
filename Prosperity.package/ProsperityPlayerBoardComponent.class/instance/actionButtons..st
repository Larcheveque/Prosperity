as yet unclassified
actionButtons: html
	html
		table: [ 
			html
				tableRow: [ 
					html
						tableData: [ 
							html anchor
								callback: [ self player takeMoney ];
								with: 'Take 100€' ].
					html
						tableData: [ 
							html anchor
								callback: [ self player cleanPollution ];
								with: 'Clean Pollution' ].
					html
						tableData: [ 
							html anchor
								callback: [ self player increaseEnergyResearch ];
								with: 'Research Energy' ].
					html
						tableData: [ 
							html anchor
								callback: [ self player increaseEcologyResearch ];
								with: 'Research Ecology' ].
					(self gameComponent selectedTile notNil and: [ self gameComponent selectedTile isSpecial ])
						ifTrue: [ 
							html
								tableData: [ 
									html anchor
										callback: [ self player buySpecialTile: self gameComponent selectedTile ];
										with: 'Buy special' ] ] ] ]