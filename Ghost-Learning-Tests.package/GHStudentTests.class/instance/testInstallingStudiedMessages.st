tests
testInstallingStudiedMessages
	
	| class |
	class := GHMetaMessages newAnonymousSubclass.
	ghost someMessage.
	ghost printString.

	[ghost learning installStudiedMessagesInto: class] on: AuthorNameRequest  do: [:err | err resume: nil].
	
	self assert: (class includesSelector: #someMessage).
	self assert: (class includesSelector: #printString)