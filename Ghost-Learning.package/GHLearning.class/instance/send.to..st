message interception
send: aMessage to: aGhost

	|  learnedMessage |
	learnedMessage := studiedMessages at: aMessage selector ifAbsent: [ nil].
	learnedMessage ifNil: [ 
		learnedMessage := self learnMessage: aMessage sentTo: aGhost].
	
	"here we should explicitly execute method by primitive to not introduce new messages to ghost because it not what it learn"
	^GHMetaMessages executeWith: aGhost andArguments: aMessage arguments method: learnedMessage method