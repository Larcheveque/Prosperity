as yet unclassified
fromSton: stonReader
	| aspect |
	aspect := stonReader parseListSingleton.
	aspect = #environment ifTrue: [ aspect := #env ].
	^ self perform: aspect