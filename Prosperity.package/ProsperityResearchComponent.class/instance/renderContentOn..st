rendering
renderContentOn: html
	html div
		class: #researchComponent;
		style: 'position: absolute;';
		with: [ 
					| dec |
					dec := self displayEnergyTiles: html.
					self researchLevelDisplay: html dec: dec.
					self displayEcologyTiles: html dec: dec]