Extension { #name : 'GHStandardMetaMessages' }

{ #category : '*Ghost-NewToolsSupport' }
GHStandardMetaMessages >> allInspectorNodes [
	"Answer a list of attributes as nodes"

	^ { StInspectorSelfNode hostObject: ghost }, 
		self inspectorNodes
]

{ #category : '*Ghost-NewToolsSupport' }
GHStandardMetaMessages >> displayString [ 
	^ghost ghostPrintString
]

{ #category : '*Ghost-NewToolsSupport' }
GHStandardMetaMessages >> displayStringLimitedTo: limit [
	^self displayString
]

{ #category : '*Ghost-NewToolsSupport' }
GHStandardMetaMessages >> evaluatorInitialText: aStObjectContextPresenter [ 
	^ '{1}' format: { aStObjectContextPresenter model codeSnippet } 
]

{ #category : '*Ghost-NewToolsSupport' }
GHStandardMetaMessages >> inspectionContexts [
	"This is a utility method that collects all presentations for the current object.
	By default, it simply looks for the #inspectorPresentationOrder:title: pragma.
	The inspector can decice whether or not a presentation should be dispayed.
	Subclasses might want to override it for more special behavior."

	^ (GHGhostInspectionCollector on: ghost) collectInspectionContexts
]

{ #category : '*Ghost-NewToolsSupport' }
GHStandardMetaMessages >> inspectorNodes [
	"Answer a list of attributes as nodes"
	
	^ (StNodeCollector for: ghost) slotNodes
]

{ #category : '*Ghost-NewToolsSupport' }
GHStandardMetaMessages >> stDisplayString [ 
	^self displayString
]
