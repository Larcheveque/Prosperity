rendering
selectionStyle: aTile
	^ aTile = self selectedTile ifFalse: [ '' ] ifTrue: [ ' outline: 3px solid red;
  outline-offset: -3px;' ]