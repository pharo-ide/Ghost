Class {
	#name : 'GHGhostInspectionContext',
	#superclass : 'StInspectionContext',
	#category : 'Ghost-NewToolsSupport',
	#package : 'Ghost-NewToolsSupport'
}

{ #category : 'private - factory' }
GHGhostInspectionContext >> basicNewInspectionPresenter [

	| args |
	args := self methodSelectorNeedsBuilder ifTrue: [{ self newPresenterBuilder }] ifFalse: [ #() ].
	
	^MirrorPrimitives  
		withReceiver: self inspectedObject 
		perform: self methodSelector 
		withArguments: args
]
