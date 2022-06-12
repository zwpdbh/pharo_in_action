Class {
	#name : #CounterTest,
	#superclass : #TestCase,
	#category : #MyCounter
}

{ #category : #tests }
CounterTest >> testCountIsSetAndRead [ 
| c | 
c := Counter new. 
c count: 7.
self assert: c count equals: 7
]

{ #category : #tests }
CounterTest >> testDecrement [ 
| c |
c := Counter new.
c count: 7.
c decrement decrement.
self assert: c count equals: 5
]

{ #category : #tests }
CounterTest >> testIncrement [ 
| c | 
c := Counter new.
c count: 0; increment; increment.
self assert: c count equals: 2
]
