tests
testLearningMessageShouldAddItToStudiedMessages
	
	| actual |
	ghost someMessage.
	
	actual := ghost learning studiedMessages at: #someMessage.
	
	self assert: actual method equals: GHTeacherStub >> #someMessage.
	self assert: actual firstSender equals: thisContext