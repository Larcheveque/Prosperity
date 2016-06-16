accessing
game
	game
		ifNil: [ 
			self
				game:
					(ProsperityGame new
						players:
								(#(#red #blue "#green #yellow")
										collect: [ :aColor | 
											(ProsperityPlayer color: aColor)
												ia:
													(aColor = #red
														ifTrue: [ nil ]
														ifFalse: [ ProsperityFirstIA new ]) ]);
						yourself) ].
	^ game