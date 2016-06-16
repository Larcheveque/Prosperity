actions
buyTile: aTile atBoardPosition: aBoardPosition
	(self canBuy: aTile)
		ifFalse: [ ProsperityNotEnoughMoney signal ].
	self board placeTile: aTile atPosition: aBoardPosition.
	self money: self money - (aTile priceForPlayer: self).
	self game removeTile: aTile.
	aTile executeBuyBlock: self.
	self tookAction