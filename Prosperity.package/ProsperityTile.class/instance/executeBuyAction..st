as yet unclassified
executeBuyAction: aPlayer
	self buyAction ifNotNil: [ self buyAction executeFor: aPlayer ]