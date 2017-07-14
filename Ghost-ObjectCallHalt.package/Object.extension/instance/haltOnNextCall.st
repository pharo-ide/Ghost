*Ghost-ObjectCallHalt
haltOnNextCall
	| mutation |
	mutation := GHObjectMutation behaviour: GHObjectCallHalt new.
	mutation mutate: self