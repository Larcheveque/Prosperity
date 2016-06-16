as yet unclassified
decadesTilesForNewGame
	| draft tilesPerCategory |
	draft := Stack new.
	tilesPerCategory := self tiles groupedBy: #category.
	(self categories \ #(#Starting #Global)) sorted reverse
		do: [ :aDecade | 
			[ (tilesPerCategory at: aDecade) shuffle do: [ :aTile | draft push: aTile ] ]
				on: NotFound
				do: [ self flag: 'TOREMOVE' ] ].
	^ draft