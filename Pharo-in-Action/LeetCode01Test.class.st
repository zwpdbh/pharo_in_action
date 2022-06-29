Class {
	#name : #LeetCode01Test,
	#superclass : #TestCase,
	#category : #'Pharo-in-Action'
}

{ #category : #'as yet unclassified' }
LeetCode01Test >> setUp [
	super setUp.
]

{ #category : #tests }
LeetCode01Test >> testCase01 [
	| result |
	result := self twoSumWithInput: #( 2 7 11 15 ) target: 9.
	self assert: result equals: #(0 1).
]

{ #category : #tests }
LeetCode01Test >> testCase02 [ 
self assert: #(1 2) equals: (self twoSumWithInput: #(3 2 4) target: 6)
]

{ #category : #tests }
LeetCode01Test >> testCase03 [ 
self assert: #(0 1) equals: (self twoSumWithInput: #(3 3) target: 6).
]

{ #category : #solution }
LeetCode01Test >> twoSumWithInput: aCollection target: anInteger [

	aCollection doWithIndex: [ :x :i | 
		aCollection doWithIndex: [ :y :j | 
			x + y = anInteger & (i ~= j) ifTrue: [ 
				^ { 
					  (i - 1).
					  (j - 1) } ] ] ]
]
