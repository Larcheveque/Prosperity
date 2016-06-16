as yet unclassified
renderContentOn: html
	html table
		with: [ 
			html
				tableRow: [ 
					html tableData
						colSpan: 2;
						with: [ html image url: ProsperityAspect env imageUrl ] ].
			(7 to: -7 by: -1)
				do: [ :index | 
					html
						tableRow: [ 
							html tableData
								style: 'text-align: right;';
								with: index asString.
							html tableData
								style:
										'border:solid; background-color: '
												,
													(self player ecologyLevel = index
														ifTrue: [ 'red' ]
														ifFalse: [ 'lightgray' ]) , '; width: 15px; height: 15px;';
								with: ' ' ] ].
			html
				tableRow: [ 
					html tableData
						colSpan: 2;
						with: [ html image url: ProsperityAspect pollution imageUrl ] ] ]