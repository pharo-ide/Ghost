tests
testLearningMessageFromObject

	| actual |

	actual := ghost printString.
	
	self assert: actual equals: 'a GHStudent'