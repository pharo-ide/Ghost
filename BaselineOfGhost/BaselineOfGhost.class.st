Class {
	#name : #BaselineOfGhost,
	#superclass : #BaselineOf,
	#category : 'BaselineOfGhost'
}

{ #category : #baselines }
BaselineOfGhost >> baseline: spec [
	<baseline>
	spec for: #common do: [
		spec 
			package: 'Ghost-ObjectGhost';
			package: 'Ghost-ClassGhost' with: [ spec requires: #('Ghost-ObjectGhost') ];
			package: 'Ghost-ObjectMutation' with: [ spec requires: #('Ghost-ClassGhost') ];
			package: 'Ghost-ObjectGhost-Tests' with: [ spec requires: #('Ghost-ObjectGhost') ];
			package: 'Ghost-ClassGhost-Tests' with: [ spec requires: #('Ghost-ClassGhost') ];
			package: 'Ghost-ObjectMutation-Tests' with: [ spec requires: #('Ghost-ObjectMutation') ];
			package: 'Ghost-GTSupport' with: [ spec requires: #('Ghost-ObjectGhost') ];
			package: 'Ghost-Learning' with: [ spec requires: #('Ghost-ObjectGhost') ];
			package: 'Ghost-Learning-Tests' with: [ spec requires: #('Ghost-Learning')];
			package: 'Ghost-ObjectCallHalt' with: [ spec requires: #('Ghost-ObjectMutation') ];
			package: 'Ghost-ObjectCallHalt-Tests' with: [ spec requires: #('Ghost-ObjectCallHalt')].
			
		spec
 			group: 'default' with: #( 'ObjectGhostTests' 'ClassGhostTests' 'ObjectMutationTests' 'GTSupport' 'LearningTests' );
			group: 'ObjectGhost' with: #('Ghost-ObjectGhost' );
			group: 'ObjectGhostTests' with: #('Ghost-ObjectGhost-Tests' );
			group: 'ClassGhost' with: #('Ghost-ClassGhost' );
			group: 'ClassGhostTests' with: #('Ghost-ClassGhost-Tests' );
			group: 'ObjectMutation' with: #('Ghost-ObjectMutation' );
			group: 'ObjectMutationTests' with: #('Ghost-ObjectMutation-Tests' );
			group: 'GTSupport' with: #('Ghost-GTSupport' );
			group: 'Learning' with: #('Ghost-Learning' );
			group: 'LearningTests' with: #('Ghost-Learning-Tests' );
			group: 'ObjectCallHalt' with: #('Ghost-ObjectCallHalt-Tests' 'ObjectGhostTests' 'ClassGhostTests' 'ObjectMutationTests' 'GTSupport')
		] 

]
