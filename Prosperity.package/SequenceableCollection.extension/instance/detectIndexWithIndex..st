*Prosperity
detectIndexWithIndex: aBlock 
	self doWithIndex: [:each :index | (aBlock value: each value:index) ifTrue: [^ index]].
	^ self error: 'Should not appear'