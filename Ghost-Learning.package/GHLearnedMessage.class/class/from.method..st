instance creation
from: senderContext method: aMethod

	^self new 
		method: aMethod;
		firstSender: senderContext 