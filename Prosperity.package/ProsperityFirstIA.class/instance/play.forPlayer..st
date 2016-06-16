as yet unclassified
play: aProsperityGame forPlayer: aProsperityPlayer
	| bestChange bestChangeWith100more |
	aProsperityGame remainingActionForCurrentPlayer = 2
		ifTrue: [ 
			bestChangeWith100more := ((aProsperityGame availableTiles
				select: [ :aTile | aProsperityPlayer canBuyWith100More: aTile ])
				flatCollect: [ :aTile | aProsperityPlayer board tilesReplaceablesBy: aTile ])
				detectMax: [ :aCombination | self evaluateExchange: aCombination value by: aCombination key forPlayer: aProsperityPlayer ] ].
	bestChange := ((aProsperityGame availableTiles select: [ :aTile | aProsperityPlayer canBuy: aTile ])
		flatCollect: [ :aTile | aProsperityPlayer board tilesReplaceablesBy: aTile ])
		detectMax: [ :aCombination | self evaluateExchange: aCombination value by: aCombination key forPlayer: aProsperityPlayer ].
	(bestChange isNil or: [ 1 > (self evaluateExchange: bestChange value by: bestChange key forPlayer: aProsperityPlayer) ])
		ifTrue: [ 
			((aProsperityGame remainingAspectsInDecade includes: ProsperityAspect point)
				and: [ aProsperityPlayer pollutionLevel \\ 5 = 1 ])
				ifTrue: [ ^ aProsperityPlayer cleanPollution ]
				ifFalse: [ ^ aProsperityPlayer takeMoney ] ]
		ifFalse: [ 
			bestChangeWith100more notNil
				and: [ 
					bestChangeWith100more = bestChange
						ifFalse: [ ^ aProsperityPlayer takeMoney ] ].
			aProsperityPlayer
				buyTile: bestChange key
				atBoardPosition:
					(aProsperityPlayer board tiles
						detectIndexWithIndex: [ :tile :index | tile = bestChange value and: [ aProsperityPlayer board tile: bestChange key isValideAt: index ] ]) ]