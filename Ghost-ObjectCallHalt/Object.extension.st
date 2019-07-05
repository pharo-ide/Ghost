Extension { #name : #Object }

{ #category : #'*Ghost-ObjectCallHalt' }
Object >> haltOnNextCall [
	| mutation |
	mutation := GHObjectMutation behaviour: GHObjectCallHalt new.
	mutation mutate: self
]
