as yet unclassified
renderContentOn: html
	self displayHeader: html.
	html render: researchAndPointsComponent.
	html render: playerBoardComponent.
	html
		break;
		break;
		break.
	html table
		style: 'margin-top: 650px;';
		with: [ html tableRow: [ opponentsBoards do: [ :aBoard | html tableData with: [ html render: aBoard ] ] ] ].
	self eventuallyDisplayPopUp: html