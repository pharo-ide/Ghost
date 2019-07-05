"
I am special debugger action to run code until current receiver will not be called by any message. Any next call wil be halted
"
Class {
	#name : #GHRunToNextSelfCallDebugAction,
	#superclass : #ResumeDebugAction,
	#category : 'Ghost-ObjectCallHalt'
}

{ #category : #'as yet unclassified' }
GHRunToNextSelfCallDebugAction class >> gtStackDebuggingActionFor: aDebugger [
	<gtStackDebuggingAction>
	
	^ (self forDebugger: aDebugger)
			icon: GLMUIThemeExtraIcons glamorousPlay
]

{ #category : #accessing }
GHRunToNextSelfCallDebugAction >> defaultLabel [

	^ 'Run to next self call'
]

{ #category : #accessing }
GHRunToNextSelfCallDebugAction >> defaultOrder [

	^ 15
]

{ #category : #actions }
GHRunToNextSelfCallDebugAction >> executeAction [
	
	self currentContext receiver haltOnNextCall.
	
	^super executeAction.
]

{ #category : #accessing }
GHRunToNextSelfCallDebugAction >> id [

	^ #runToNextObjectCall
]
