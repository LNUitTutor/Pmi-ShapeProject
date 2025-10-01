Class {
	#name : 'PmiRectangleTest',
	#superclass : 'TestCase',
	#category : 'LearnPMI',
	#package : 'LearnPMI'
}

{ #category : 'tests' }
PmiRectangleTest >> testArea [

	| p q |
	p := PmiRectangle new.
	q := PmiRectangle newWithA: 10 andB: 15.
	self assert: p area equals: 8.
	self assert: q area equals: 150
]

{ #category : 'tests' }
PmiRectangleTest >> testCreation [

	| r |
	r := PmiRectangle newWithA: 10 andB: 11.
	self assert: r a equals: 10.
	self assert: r b equals: 11
]

{ #category : 'tests' }
PmiRectangleTest >> testDefaultCreation [

	| r |
	r := PmiRectangle new.
	self assert: r a equals: 2.
	self assert: r b equals: 4
]

{ #category : 'tests' }
PmiRectangleTest >> testPerimeter [

	| p q |
	p := PmiRectangle new.
	q := PmiRectangle newWithA: 10 andB: 10.
	self assert: p perimeter equals: 12.
	self assert: q perimeter equals: 10*4
]
