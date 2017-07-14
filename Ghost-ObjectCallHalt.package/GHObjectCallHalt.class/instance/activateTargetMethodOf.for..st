message interception
activateTargetMethodOf: aMessage for: anObject
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