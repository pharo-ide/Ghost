I represent learned message with information about implementation method and first sender.

I was introduced to simplify naked ghosts debugging to easily detect source of unexpected messages.

My instance can be created by: 
	GHLearnedMessage from: senderContext method: aMethod
 
Internal Representation and Key Implementation Points.

    Instance Variables
	firstSender:		<Context>
	method:		<Method>