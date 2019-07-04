Class {
	#name : #TennisGame,
	#superclass : #Object,
	#instVars : [
		'scores'
	],
	#category : #TennisGame
}

{ #category : #initialization }
TennisGame >> initialize [
	scores := Array new:2.
	scores at: 1 put:0.
	scores at: 2 put:0
]

{ #category : #'as yet unclassified' }
TennisGame >> playerWin: aNumber [
	(scores at: 1) = 40 & ((scores at: 2) = 40)
		ifTrue: [ scores at: aNumber put: 50 ]
		ifFalse: [ (scores at: aNumber) = 30
				ifTrue: [ scores at: aNumber put: 40 ]
				ifFalse: [ scores at: aNumber put: (scores at: aNumber) + 15 ] ]
]

{ #category : #'as yet unclassified' }
TennisGame >> scorePlayer1 [
	^ scores at:1
]

{ #category : #'as yet unclassified' }
TennisGame >> scorePlayer2 [
	^ scores at:2
]
