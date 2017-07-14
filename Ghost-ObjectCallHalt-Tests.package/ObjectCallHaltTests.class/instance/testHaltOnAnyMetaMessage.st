tests
testHaltOnAnyMetaMessage

	| point |
	point := 2@3.
	
	point haltOnNextCall.
	
	[point class.
	self assert: false description: 'Halt should be signalled!' ] on: Halt do: [:exc | 
	"All interception logic should be removed from context".
		self assert: exc signalerContext selector equals: #class.
		self assert: exc signalerContext sender selector equals: testSelector.
	].

	self deny: point hasGHMutation 