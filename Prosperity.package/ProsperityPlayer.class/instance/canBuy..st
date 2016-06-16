actions
canBuy: aTile
	^ (aTile priceForPlayer: self) <= self money