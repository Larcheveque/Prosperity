as yet unclassified
renderContentOn: html
	html table
		with: [ 
			(16 to: 1 by: -1)
				do: [ :index | 
					html
						tableRow: [ 
							html tableData
								style:
										'border:solid; '
												,
													(index = 16
														ifTrue: [ 'border-color: red;' ]
														ifFalse: [ 
															index \\ 5 = 1
																ifTrue: [ 'border-color: gold;' ]
																ifFalse: [ '' ] ]) , 'background-color: '
												,
													(self player pollutionLevel >= index
														ifTrue: [ 'black' ]
														ifFalse: [ 'lightgray' ]) , '; width: 20px; height: 20px; border-radius: 20px;';
								with: ' ' ] ] ]