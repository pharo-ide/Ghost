Class {
	#name : #ObjectCallHaltTests,
	#superclass : #TestCase,
	#category : 'Ghost-ObjectCallHalt-Tests'
}

{ #category : #tests }
ObjectCallHaltTests >> testHaltOnAnyMetaMessage [

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
]

{ #category : #tests }
ObjectCallHaltTests >> testHaltOnNextObjectCall [

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
]

{ #category : #tests }
ObjectCallHaltTests >> testHaltOnlyOnce [

	| point |
	point := 2@3.
	
	point haltOnNextCall.
	
	[0@0 distanceTo: point] on: Halt do: [:exc | ].

	point abs
]

{ #category : #tests }
ObjectCallHaltTests >> testIsObjectSpecific [

	| point |
	point := 2@3.
	
	point haltOnNextCall.

	0@0 distanceTo: 4@4.
]
