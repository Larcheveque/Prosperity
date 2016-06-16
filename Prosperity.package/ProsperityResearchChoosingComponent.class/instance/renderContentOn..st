as yet unclassified
renderContentOn: html
	html div
		style:
				'position: absolute; top: 300px; left: 600px; border-width: 4px; border-color:' , self player color
						, ';border-style: solid; background-color: white;';
		with: [ 
					html table
						with: [ 
							html
								tableRow: [ 
									html tableHeading
										colSpan: 2;
										with: 'Increase research for ' , self player color , ' player (' , self researchPoints asString , ')' ].
							html
								tableRow: [ 
									html tableData: [ html image url: ProsperityAspect energy imageUrl ].
									html tableData: [ html image url: ProsperityAspect env imageUrl ] ].
							html
								tableRow: [ 
									html
										tableData: [ 
											html anchor
												callback: [ self increaseEnergy: 1 ];
												with: 'increase 1' ].
									html
										tableData: [ 
											html anchor
												callback: [ self increaseEcology: 1 ];
												with: 'increase 1' ] ].
							self researchPoints > 1
								ifTrue: [ 
									html
										tableRow: [ 
											html
												tableData: [ 
													html anchor
														callback: [ self increaseEnergy: self researchPoints ];
														with: 'increase ' , self researchPoints asString ].
											html
												tableData: [ 
													html anchor
														callback: [ self increaseEcology: self researchPoints ];
														with: 'increase ' , self researchPoints asString ] ] ] ] ]