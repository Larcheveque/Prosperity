ia
evaluateCapitalImportance: aPlayer
	^ (((aPlayer capitalLevel / 100) negated + (aPlayer researchLevel negated / 4))
		+ (0.5 * (12 - (aPlayer ecologyResearchCapability + aPlayer energyResearchCapability))))
		* (aPlayer game remainingTiles size / 36) max: 0.25