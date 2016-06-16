class initialization
initialize
	aspects := #(#capital #consume #energy #environment #point #pollution #research)
		collect: [ :aspect | self new aspect: aspect ]