as yet unclassified
researchCapabilityForLevel: aLevel
	^ (self researchCapabilityByLevel detect: [ :intWithLevel | intWithLevel key includes: aLevel ]) value