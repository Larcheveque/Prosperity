as yet unclassified
displayHeader: html
	html heading
		level: 4;
		with: [ 
					html
						text:
							'Prosperity ' , (self game players collect: [ :aPlayer | aPlayer color , ': ' , aPlayer points asString ]) asCommaString
								, ' Current Decade: ' , self game currentDecade asString , ' RemainingActions: '
								, self game remainingActionForCurrentPlayer asString.
					self game remainingAspectsInDecade do: [ :anAspect | html image url: anAspect imageUrl ] ]