tests
testIsObjectSpecific

	| point |
	point := 2@3.
	
	point haltOnNextCall.

	0@0 distanceTo: 4@4.