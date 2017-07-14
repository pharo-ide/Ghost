actions
executeAction
	
	self currentContext receiver haltOnNextCall.
	
	^super executeAction.