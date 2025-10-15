Class {
	#name : 'PmiTriangle',
	#superclass : 'PmiFlatShape',
	#instVars : [
		'a',
		'b',
		'gamma'
	],
	#category : 'LearnPMI',
	#package : 'LearnPMI'
}

{ #category : 'instance creation' }
PmiTriangle class >> newWithA: side_1 andB: side_2 byAngle: gamma [

	^ self basicNew
		  a: side_1;
		  b: side_2;
		  gamma: gamma
]

{ #category : 'accessing' }
PmiTriangle >> a [

	^ a
]

{ #category : 'accessing' }
PmiTriangle >> a: aNumber [

	a := aNumber max: self class minimalSize
]

{ #category : 'calculating' }
PmiTriangle >> area [

	^ 0.5 * self a * self b * self gamma degreesToRadians sin
]

{ #category : 'accessing' }
PmiTriangle >> b [

	^ b
]

{ #category : 'accessing' }
PmiTriangle >> b: aNumber [

	b := aNumber max: self class minimalSize
]

{ #category : 'accessing' }
PmiTriangle >> c [

	^ (a squared + b squared - (2 * a * b * gamma degreesToRadians cos)) sqrt
]

{ #category : 'accessing' }
PmiTriangle >> gamma [

	^ gamma
]

{ #category : 'accessing' }
PmiTriangle >> gamma: aNumber [

	gamma := (aNumber max: 1) min: 179
]

{ #category : 'initialization' }
PmiTriangle >> initialize [

	a := 3.
	b := 4.
	gamma := 90
]

{ #category : 'calculating' }
PmiTriangle >> perimeter [

	^ self a + self b + self c
]

{ #category : 'printing' }
PmiTriangle >> printOn: aStream [

	aStream
		nextPutAll: 'Triangle<';
		print: self a;
		nextPut: $;;
		print: self b;
		nextPut: $;;
		print: self gamma;
		nextPut: $>
]
