helping
remainingAspectsInDecade
	^ (self remainingTiles select: [ :aTile | aTile category = self currentDecade  ] thenCollect: #mainAspect) shuffle