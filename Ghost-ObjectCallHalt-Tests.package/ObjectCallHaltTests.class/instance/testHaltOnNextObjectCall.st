tests
testHaltOnNextObjectCall

	| point |
	point := 2@3.
	
	point haltOnNextCall.
	
	[0@0 distanceTo: point.
	self assert: false description: 'Halt should be signalled!' ] on: Halt do: [:exc | 
	"All interception logic should be removed from context".
		self assert: exc signalerContext selector equals: #x.
		self assert: exc signalerContext sender selector equals: #distanceTo:.
		self assert: exc signalerContext sender sender selector equals: testSelector.
	].

	self deny: point hasGHMutation  