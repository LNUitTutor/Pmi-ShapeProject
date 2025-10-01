"
Клас моделює фігуру прямокутник. Містить довжину та ширину. Вміє обчислювати площу та периметр
"
Class {
	#name : 'PmiRectangle',
	#superclass : 'Object',
	#instVars : [
		'a',
		'b'
	],
	#category : 'LearnPMI',
	#package : 'LearnPMI'
}

{ #category : 'instance creation' }
PmiRectangle class >> newFrom: aPoint [

	^ self newWithA: aPoint x andB: aPoint y
]

{ #category : 'instance creation' }
PmiRectangle class >> newWithA: width andB: high [

	| inst |
	inst := self basicNew.
	inst
		a: width;
		b: high.
	^ inst
]

{ #category : 'accessing' }
PmiRectangle >> a [

	^ a
]

{ #category : 'accessing' }
PmiRectangle >> a: aNumber [ 
	a := aNumber max: 0.1
]

{ #category : 'calculating' }
PmiRectangle >> area [

	^ a * b
]

{ #category : 'accessing' }
PmiRectangle >> b [

	^ b
]

{ #category : 'accessing' }
PmiRectangle >> b: aNumber [ 
	b := aNumber max: 0.1
]

{ #category : 'initialization' }
PmiRectangle >> initialize [ 

	a := 2.
	b := 4
]

{ #category : 'calculating' }
PmiRectangle >> perimeter [

	^ (a + b) * 2
]

{ #category : 'printing' }
PmiRectangle >> printOn: aStream [

	aStream
		nextPutAll: 'Rectangle[';
		print: a;
		nextPut: $x;
		print: b;
		nextPut: $]
]
