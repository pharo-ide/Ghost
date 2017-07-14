I am behaviour of Student which collected all recieved messages as study result. For all intercepted messages I find real method by my  teacher class and execute it. At the end my list of studiedMessages contains all messages which was received during education process.

My users then can install studied messages to ghost meta messages class.
	learning installStudiedMessagesInto:  aMetaMessagesClass
 
I can be created with concrete teacher class: 
	learning := GHLearning by: Object

Internal Representation and Key Implementation Points.

    Instance Variables
	metaLevel:		<GHMetaLevel>
	studiedMessages:		<Dictionary>
	teacher:		<Class>