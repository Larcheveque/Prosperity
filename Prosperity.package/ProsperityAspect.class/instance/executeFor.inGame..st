as yet unclassified
executeFor: aPlayer inGame: aGame
	self perform: (self aspect,'For:inGame:') asSymbol with: aPlayer with: aGame.