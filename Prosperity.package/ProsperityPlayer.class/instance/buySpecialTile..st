as yet unclassified
buySpecialTile: aTile 
	(self canBuy: aTile)
		ifFalse: [ ProsperityNotEnoughMoney signal ].
	self money: self money - (aTile priceForPlayer: self).
	self game removeTile: aTile.
	aTile executeBuyAction: self.
	self tookAction