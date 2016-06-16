as yet unclassified
resolveResearchAction: aProsperityPlayerResearchAction
	| done |
	done := false.
	{[ 
	(ProsperityRules
		researchCapabilityForLevel:
			aProsperityPlayerResearchAction player energyResearchLevel + aProsperityPlayerResearchAction researchPoints)
		- aProsperityPlayerResearchAction player energyResearchCapability > 0
		ifTrue: [ 
			aProsperityPlayerResearchAction spendPointsInEnergy: aProsperityPlayerResearchAction researchPoints.
			done := true ] ].
	[ 
	(ProsperityRules
		researchCapabilityForLevel:
			aProsperityPlayerResearchAction player ecologyResearchLevel + aProsperityPlayerResearchAction researchPoints)
		- aProsperityPlayerResearchAction player ecologyResearchCapability > 0
		ifTrue: [ 
			aProsperityPlayerResearchAction spendPointsInEcology: aProsperityPlayerResearchAction researchPoints.
			done := true ] ]} shuffle do: #value.
	done
		ifFalse: [ 
			aProsperityPlayerResearchAction player energyResearchLevel < aProsperityPlayerResearchAction player ecologyResearchLevel
				ifTrue: [ aProsperityPlayerResearchAction spendPointsInEnergy: aProsperityPlayerResearchAction researchPoints ]
				ifFalse: [ aProsperityPlayerResearchAction spendPointsInEcology: aProsperityPlayerResearchAction researchPoints ] ]