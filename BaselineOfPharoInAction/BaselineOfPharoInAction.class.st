Class {
	#name : #BaselineOfPharoInAction,
	#superclass : #BaselineOf,
	#category : #BaselineOfPharoInAction
}

{ #category : #baselines }
BaselineOfPharoInAction >> baseline: spec [ 
<baseline>
spec 
	for: #common 
	do: [ spec package: 'PharoInAction' ]
]
