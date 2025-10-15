Class {
	#name : 'PmiSquare',
	#superclass : 'PmiRectangle',
	#category : 'LearnPMI',
	#package : 'LearnPMI'
}

{ #category : 'constants' }
PmiSquare class >> minimalSize [

	^ 0.5
]

{ #category : 'instance creation' }
PmiSquare class >> newFrom: aPoint [
^self newWithA: aPoint x andB: aPoint y
]

{ #category : 'instance creation' }
PmiSquare class >> newWithA: aSide [

	^ self basicNew a: aSide
]

{ #category : 'instance creation' }
PmiSquare class >> newWithA: width andB: high [

	^ self basicNew a: width
]

{ #category : 'accessing' }
PmiSquare >> a: aNumber [

	super
		a: aNumber;
		b: aNumber
]

{ #category : 'accessing' }
PmiSquare >> b: aNumber [
^ self error: 'Do not use this in Square'
]

{ #category : 'initialization' }
PmiSquare >> initialize [

	a := 2.
	b := 2
]

{ #category : 'printing' }
PmiSquare >> printOn: aStream [

	aStream
		nextPutAll: 'Square[';
		print: self a;
		nextPut: $]
]
