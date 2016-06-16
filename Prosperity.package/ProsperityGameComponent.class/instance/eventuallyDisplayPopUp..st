as yet unclassified
eventuallyDisplayPopUp: html
	self game actions
		ifNotEmpty: [ 
			self game actions first isPlayerResearchAction
				ifTrue: [  html render: (ProsperityResearchChoosingComponent researchAction: self game actions first) ] ]