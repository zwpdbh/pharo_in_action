Class {
	#name : #CollectionIteratorExampleTest,
	#superclass : #TestCase,
	#category : #'Pharo-in-Action'
}

{ #category : #initialization }
CollectionIteratorExampleTest >> setUp [
	super setUp.
	
]

{ #category : #tests }
CollectionIteratorExampleTest >> testCollec [
self assert:  (#('abc' 'def' 'ghi') collect: [ :e | e asUppercase ]) equals: #('ABC' 'DEF' 'GHI'). 
]

{ #category : #tests }
CollectionIteratorExampleTest >> testDoExample01 [
| double |
double := OrderedCollection new.
#(1 2 3 4 5 6) do: [ :e | double add: 2 * e ].
self assert: double equals: (#(2 4 6 8 10 12) as: OrderedCollection) .
]

{ #category : #tests }
CollectionIteratorExampleTest >> testDoWithIndex [
| result |

result := #('bob' 'joe' 'toto') doWithIndex: [ :each :i | (each = 'joe') ifTrue: [ ^ i ] ].
self assert: 2 equals: result
]
