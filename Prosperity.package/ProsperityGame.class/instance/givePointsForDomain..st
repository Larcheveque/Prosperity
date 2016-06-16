final
givePointsForDomain: domain
	| maxResearch tops secondMaxResearch seconds |
	maxResearch := self players max: domain.
	tops := self players select: [ :aPlayer | (aPlayer perform: domain) = maxResearch ].
	tops size = 1
		ifTrue: [ 
			tops first gainPoints: 3.
			secondMaxResearch := self players \ tops max: domain.
			seconds := self players \ tops select: [ :aPlayer | (aPlayer perform: domain) = secondMaxResearch ].
			seconds size = 1
				ifTrue: [ seconds first gainPoints: 1 ] ]
		ifFalse: [ tops do: [ :aPlayer | aPlayer gainPoints: 2 ] ]