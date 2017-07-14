tests
testLearningMessageShouldExecuteIt

	| expected actual |
	expected := teacher someMessage.
	
	actual := ghost someMessage.
	
	self assert: actual equals: expected