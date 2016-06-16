actions
automaticResolutionForActions
	[ 
	[ self actions notEmpty ]
		whileTrue: [ 
			self actions first automaticResolution. ] ]
		on: ProsperityHumanDecisionWaiting
		do: [ 
			"Her we just have to wait"
			 ]