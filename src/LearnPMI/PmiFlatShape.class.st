Class {
	#name : 'PmiFlatShape',
	#superclass : 'Object',
	#category : 'LearnPMI',
	#package : 'LearnPMI'
}

{ #category : 'constants' }
PmiFlatShape class >> minimalSize [

	^ 0.1
]

{ #category : 'calculating' }
PmiFlatShape >> area [

	^ self subclassResponsibility
]

{ #category : 'calculating' }
PmiFlatShape >> perimeter [

	^ self subclassResponsibility
]
