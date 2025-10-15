Class {
	#name : 'PmiCircle',
	#superclass : 'PmiFlatShape',
	#instVars : [
		'r'
	],
	#category : 'LearnPMI',
	#package : 'LearnPMI'
}

{ #category : 'instance creation' }
PmiCircle class >> newWithR: r [

	^ self basicNew r: r
]

{ #category : 'calculating' }
PmiCircle >> area [

	^ Float pi * self r squared 
]

{ #category : 'initialization' }
PmiCircle >> initialize [

	r := 1.0
]

{ #category : 'calculating' }
PmiCircle >> perimeter [

	^ 2.0 * Float pi * self r
]

{ #category : 'printing' }
PmiCircle >> printOn: aStream [

	aStream
		nextPutAll: 'Circle(';
		print: self r;
		nextPut: $)
]

{ #category : 'accessing' }
PmiCircle >> r [

	^ r
]

{ #category : 'accessing' }
PmiCircle >> r: aNumber [

	r := aNumber max: 0.1
]
