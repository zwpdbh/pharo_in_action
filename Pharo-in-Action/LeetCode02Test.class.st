Class {
	#name : #LeetCode02Test,
	#superclass : #TestCase,
	#category : #'Pharo-in-Action'
}

{ #category : #adding }
LeetCode02Test >> addNumbersFrom: l1 and: l2 [ 
   |integerl1 integerl2|
	integerl1 := self fromArrayToInteger: (l1 reverse).
	integerl2 := self fromArrayToInteger: (l2 reverse).
	^ self fromNumberToArrayOfInteger: ((integerl1 + integerl2) asString reverse)
]

{ #category : #'instance creation' }
LeetCode02Test >> fromArrayToInteger: inputArray [ 
 	| result |
	result := (inputArray inject: '' into: [ :acc :each | acc, each asString]) asInteger.
	^ result.
]

{ #category : #'instance creation' }
LeetCode02Test >> fromNumberToArrayOfInteger: input [ 
^ (input asArray collect: [ :each | each asString ]) collect: [ :each | each asInteger ].
]

{ #category : #tests }
LeetCode02Test >> testCase01 [ 
| l1 l2|
l1 := #(2 4 3).
l2 := #(5 6 4).
self assert: #(7 0 8) equals: (self addNumbersFrom: l1 and: l2).
self assert: #(0) equals: (self addNumbersFrom: #(0) and: #(0)).
self assert: #(8 9 9 9 0 0 0 1) equals: (self addNumbersFrom: #(9 9 9 9 9 9 9) and: #(9 9 9 9)).
]
