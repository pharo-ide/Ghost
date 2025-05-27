Class {
	#name : 'GHGhostInspectionCollector',
	#superclass : 'StInspectionCollector',
	#category : 'Ghost-NewToolsSupport',
	#package : 'Ghost-NewToolsSupport'
}

{ #category : 'private' }
GHGhostInspectionCollector >> basicContextFromPragma: aPragma [
	| context |	
	context := GHGhostInspectionContext fromPragma: aPragma.
	context inspectedObject: self inspectedObject.
	^ context
]
