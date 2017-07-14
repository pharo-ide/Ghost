operations
installStudiedMessagesInto: aMetaMessagesClass

	studiedMessages do: [ :each |
		(aMetaMessagesClass includes: each selector) ifFalse: [ 
			aMetaMessagesClass compile: each sourceCode classified: each category ]
	]