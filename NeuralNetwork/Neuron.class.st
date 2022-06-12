Class {
	#name : #Neuron,
	#superclass : #Object,
	#instVars : [
		'weights',
		'bias'
	],
	#category : #NeuralNetwork
}

{ #category : #accessing }
Neuron >> bias [ 
 ^ bias 
]

{ #category : #accessing }
Neuron >> bias: aNumber [ 
	bias := aNumber
]

{ #category : #accessing }
Neuron >> feed: inputs [	
	| z |
	z := (inputs with: weights collect: [ :x :w | x * w]) sum + bias.
	^ z > 0 ifTrue: [ 1 ] ifFalse: [ 0 ].
]

{ #category : #accessing }
Neuron >> weights [ 
	^ weights 
]

{ #category : #accessing }
Neuron >> weights: someWeightsAsNumbers [
	weights := someWeightsAsNumbers 
]
