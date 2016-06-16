actions
canBuyWith100More: aTile
	^ (aTile priceForPlayer: self) <= (self money + 100)