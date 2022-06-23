Class {
	#name : #CollectionIteratorExampleTest,
	#superclass : #TestCase,
	#category : #'Pharo-in-Action'
}

{ #category : #tests }
CollectionIteratorExampleTest >> iterateExample01 [
self assert:  (#('abc' 'def' 'ghi') do: [ :e | e asUppercase ]) equals: #('ABC' 'DEF' 'GHI'). 
]

{ #category : #initialization }
CollectionIteratorExampleTest >> setUp [
	super setUp.
	
]

{ #category : #tests }
CollectionIteratorExampleTest >> testIterateExample01 [
self assert:  (#('abc' 'def' 'ghi') collect: [ :e | e asUppercase ]) equals: #('ABC' 'DEF' 'GHI'). 
]
