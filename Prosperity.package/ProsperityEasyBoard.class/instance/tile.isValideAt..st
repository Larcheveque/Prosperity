as yet unclassified
tile: aTile isValideAt: aPosition
	^ (aPosition = 10 or: aPosition = 11)
		ifTrue: [ 
			aTile name = 'EmptyInfrastructure'
				ifTrue: [ true ]
				ifFalse: [ 
					(self tiles at: 7) name = 'StartingGreen'
						ifTrue: [ false ]
						ifFalse: [ super tile: aTile isValideAt: aPosition ] ] ]
		ifFalse: [ super tile: aTile isValideAt: aPosition ]