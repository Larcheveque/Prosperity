as yet unclassified
isWaitingForPlayerPlayAction
	^ self actions notEmpty and: [ self actions first isPlayerPlayAction ]