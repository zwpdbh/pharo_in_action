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
PerceptronTest >> testAND [ 
	| p |
	p := self newNeuron. 
	p weights: #(1 1).
	p bias: -1.5.
	
	self assert: (p feed: #(0 0)) equals: 0.
	self assert: (p feed: #(0 1)) equals: 0.
	self assert: (p feed: #(1 0)) equals: 0.
	self assert: (p feed: #(1 1)) equals: 1.
]

{ #category : #tests }
PerceptronTest >> testNOT [
 | p |
 p := self newNeuron.
 p weights: #(-1).
 p bias: 0.5.
 self assert: (p feed: #(1)) equals: 0.
 self assert: (p feed: #(0)) equals: 1.
]

{ #category : #tests }
PerceptronTest >> testOR [
 | p |
 p := self newNeuron.
 p weights: #(1 1).
 p bias: -0.5.
 self assert: (p feed: #(0 0)) equals: 0.
 self assert: (p feed: #(0 1)) equals: 1.
 self assert: (p feed: #(1 0)) equals: 1.
 self assert: (p feed: #(1 1)) equals: 1.
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

{ #category : #tests }
PerceptronTest >> testWrongFeeding [ 
| p |
p := self newNeuron.
p weights: #(-1).
p bias: 0.5.

self should: [ p feed: #(1 1) ] raise: Error.
]
