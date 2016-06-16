price
priceForPlayer: aProsperityPlayer
	| researchCapability |
	researchCapability := aProsperityPlayer perform: (self domain , 'ResearchCapability') asSymbol.
	^ self level < researchCapability
		ifTrue: [ 50 ]
		ifFalse: [ (self level - researchCapability + 1) * 100 ]