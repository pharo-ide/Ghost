tests
testHaltOnlyOnce

	| point |
	point := 2@3.
	
	point haltOnNextCall.
	
	[0@0 distanceTo: point] on: Halt do: [:exc | ].

	point abs