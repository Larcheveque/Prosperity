actions
removeAction: aProsperityPlayerAction
	self assert: aProsperityPlayerAction = self actions first.
	self actions remove: aProsperityPlayerAction.
	self automaticResolutionForActions