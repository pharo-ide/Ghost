Class {
	#name : 'GHGhostRawInspection',
	#superclass : 'StRawInspectionPresenter',
	#category : 'Ghost-NewToolsSupport',
	#package : 'Ghost-NewToolsSupport'
}

{ #category : 'accessing' }
GHGhostRawInspection >> inspectorNodes [

	^{ StInspectorSelfNode hostObject: self model }, 
		((StNodeCollector for: self model) slotNodes)
]

{ #category : 'stepping' }
GHGhostRawInspection >> step [
	| rootNodes |

	rootNodes := self inspectorNodes.
	mementoNodes ifNil: [ 
		mementoNodes := rootNodes collect: #mementoValue.
		^ self ].
	(rootNodes collect: #value) = mementoNodes ifTrue: [ ^ self ].

	mementoNodes := rootNodes collect: #mementoValue.
	attributeTable updateRootsKeepingSelection: rootNodes
]
