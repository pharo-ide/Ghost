"
I halt any call to object.

First I recover mutated object from my mutation.
Then I install breakpoint into target method and activate it.
I use special trick to remove ghost related stacks from context to skip it from users completelly
"
Class {
	#name : #GHObjectCallHalt,
	#superclass : #GHGhostBehaviour,
	#category : 'Ghost-ObjectCallHalt'
}

{ #category : #'message interception' }
GHObjectCallHalt >> activateTargetMethodOf: aMessage for: anObject [
	| new sender objectClass |
	sender := thisContext.
	[ sender selector == #cannotInterpret: ] whileFalse: [ sender := sender sender ].
	thisContext terminateTo: sender sender.
	"We should not use direct message to object because we propaply already install breakpoint to it"
	objectClass := GHMetaMessages extractClassOf: anObject. 	
	new := thisContext sender
		activateMethod: (objectClass lookupSelector: aMessage selector)
		withArgs: aMessage arguments
		receiver: anObject
		class: objectClass.

	new jump
]

{ #category : #'message interception' }
GHObjectCallHalt >> currentMetaLevel [
	^GHMetaLevel empty
]

{ #category : #'message interception' }
GHObjectCallHalt >> send: aMessage to: anObject [
	| method breakpoint |
	anObject recoverFromGHMutation.
	method := anObject class lookupSelector: aMessage selector.
	
	breakpoint := Breakpoint new
		node: method ast;
		once.
	breakpoint link condition: [ :receiver | receiver == anObject ] arguments: #(#object).
	breakpoint install.
	
	self activateTargetMethodOf: aMessage for: anObject
]
