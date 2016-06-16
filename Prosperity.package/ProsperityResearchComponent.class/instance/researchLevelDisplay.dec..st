rendering
researchLevelDisplay: html dec: aDec
	html div
		style: 'position: absolute; left: ' , (aDec + 2) asString , 'px;';
		with: [ 
					html image url: (ProsperityFileLibrary urlOf: 'ResearchAndPointsPng').
					self players
						doWithIndex: [ :aPlayer :index | 
							html div
								style:
										'background-color: ' , aPlayer color
												,
													'; width: 12px; height: 12px; position: absolute;
    top: ' , (self cursorTopDec: aPlayer energyResearchLevel)
												,
													'px;
    left: ' , (12 + (15 * index)) asString , 'px;';
								with: aPlayer energyResearchLevel asString ].
					self players
						doWithIndex: [ :aPlayer :index | 
							html div
								style:
										'background-color: ' , aPlayer color
												,
													'; width: 12px; height: 12px; position: absolute;
    top: ' , (self cursorTopDec: aPlayer ecologyResearchLevel)
												,
													'px;
    left: ' , (124 + (15 * index)) asString , 'px;';
								with: aPlayer ecologyResearchLevel asString ] ]