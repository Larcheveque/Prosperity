as yet unclassified
renderContentOn: html
	html div
		style: 'float:right; background-color: light', self player color capitalized ,';';
		with: [ 
					"html image url: (ProsperityFileLibrary urlOf: 'PlayerBoardPng') "
					html table 
						with: [ 
							html
								tableRow: [ 
									html tableData
										colSpan: 4;
										with: [ 
													html heading
														level: 5;
														with: 'Money: ' , self player money asString.
													self player isActive
														ifTrue: [ self actionButtons: html ] ] ].
							html
								tableRow: [ 
									html tableData: [ html render: energyLevelComponent ].
									html tableData: [ html render: ecologyLevelComponent ].
									html tableData: [ html render: pollutionLevelComponent ].
									html tableData: [ html render: infrastructureComponent ] ] ] ]