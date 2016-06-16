as yet unclassified
aspectByName
	^ aspectByName
		ifNil: [ aspectByName := (self aspects collect: [ :anAspect | anAspect aspect asSymbol -> anAspect ]) asDictionary ]