Extension { #name : 'GHTMinimalGhost' }

{ #category : '*Ghost-NewToolsSupport' }
GHTMinimalGhost >> ghostInspectionRaw: aBuilder [
	"This is the most basic presentation showing the state of the object"

	<inspectorPresentationOrder: 900 title: 'Raw'>
	^ aBuilder instantiate: GHGhostRawInspection on: self
]

{ #category : '*Ghost-NewToolsSupport' }
GHTMinimalGhost >> inspectorIconName [

	^ nil
]

{ #category : '*Ghost-NewToolsSupport' }
GHTMinimalGhost >> inspectorPerform: aSymbol with: anObject [
	"This method is required by the inspector infrastructure (in order to inspect properly 
	 ProtoObject and its direct decendants). 
	 DO NOT USE IT!"

	<primitive: 83>
	^ self primitiveFailed
]
