Extension { #name : #GHTMinimalGhost }

{ #category : #'*Ghost-NewToolsSupport' }
GHTMinimalGhost >> ghostInspectionRaw [
	"This is the most basic presentation showing the state of the object"
	<inspectorPresentationOrder: 900 title: 'Raw'>

	^ GHGhostRawInspection on: self
]

{ #category : #'*Ghost-NewToolsSupport' }
GHTMinimalGhost >> inspectorIcon [ 
	^nil
]
