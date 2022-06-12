Class {
	#name : #PerceptronTest,
	#superclass : #TestCase,
	#category : #NeuralNetwork
}

{ #category : #'instance creation' }
PerceptronTest >> newNeuron [
	"return a neuron"
	^ Neuron new.
]

{ #category : #tests }
PerceptronTest >> testSmallExample [ 
	|p result| 
	p := self newNeuron. 
	p weights: #(1 2).
	p bias: -2.
	result := p feed: #(5 2).
	self assert: result equals: 1
]
