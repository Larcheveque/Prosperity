as yet unclassified
evaluateResearchImportance: aPlayer
	^ ((aPlayer capitalLevel / 100) negated + (aPlayer researchLevel negated / 4)
		+ (12 - (aPlayer ecologyResearchCapability + aPlayer energyResearchCapability)))
		* (aPlayer game remainingTiles size / 36) max: 1