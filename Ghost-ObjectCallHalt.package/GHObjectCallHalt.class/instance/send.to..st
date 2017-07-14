message interception
send: aMessage to: anObject
	| method breakpoint |
	anObject recoverFromGHMutation.
	method := anObject class lookupSelector: aMessage selector.
	
	breakpoint := Breakpoint new
		node: method ast;
		once.
	breakpoint link condition: [ :receiver | receiver == anObject ] arguments: #(#object).
	breakpoint install.
	
	self activateTargetMethodOf: aMessage for: anObject