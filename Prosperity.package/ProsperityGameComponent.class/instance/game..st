accessing
game: aGame
	game := aGame.
	researchAndPointsComponent game: aGame.
	playerBoardComponent player: aGame firstPlayer.
	opponentsBoards := aGame players allButFirst
		collect: [ :anOpponent | (ProsperityPlayerBoardComponent gameComponent: self) player: anOpponent ]