message interception
learnMessage: aMessage sentTo: aGhost

	| sender method learnedMessage |
	sender := thisContext sender.
	[sender notNil and: [ sender receiver ghostClass == GHLearning
			or: [ sender receiver isGhost ] ]] whileTrue: [ sender := sender sender ].
	
	method := teacher lookupSelector: aMessage selector.

	learnedMessage := GHLearnedMessage from: sender method: method.
	studiedMessages at: aMessage selector put: learnedMessage.
	^learnedMessage