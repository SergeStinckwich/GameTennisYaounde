Class {
	#name : #TennisGameTest,
	#superclass : #TestCase,
	#category : #TennisGame
}

{ #category : #tests }
TennisGameTest >> testWhenBothPlayersAre40Play1WinAndGotAdvantage [
	| t |
	t := TennisGame new.
	t playerWin: 1.
	t playerWin:1.
	t playerWin: 1.
	t playerWin: 2.
	t playerWin:2.
	t playerWin:2.
	t playerWin:1.
	self assert: t scorePlayer1 equals: 50
]

{ #category : #tests }
TennisGameTest >> testWhenBothPlayersAre40Play2WinAndGotAdvantage [
	| t |
	t := TennisGame new.
	t playerWin: 1.
	t playerWin: 1.
	t playerWin: 1.
	t playerWin: 2.
	t playerWin: 2.
	t playerWin: 2.
	t playerWin: 2.
	self assert: t scorePlayer2 equals: 50
]

{ #category : #tests }
TennisGameTest >> testWhenPlayer1WinScoreIsFifteen [
	| t |
	t := TennisGame new.
	t playerWin: 1.
	self assert: t scorePlayer1 equals: 15
]

{ #category : #tests }
TennisGameTest >> testWhenPlayer1WinThreeTimesScoreIs40 [
	| t |
	t := TennisGame new.
	t playerWin:1.
	t playerWin:1.
	t playerWin:1.
	self assert: t scorePlayer1 equals: 40
]

{ #category : #tests }
TennisGameTest >> testWhenPlayer1WinTwoTimesScoreIs30 [
	| t |
	t := TennisGame new.
	t playerWin:1.
	t playerWin:1.
	self assert: t scorePlayer1 equals: 30
]

{ #category : #tests }
TennisGameTest >> testWhenPlayer2WinScoreIsFifteen [
	| t |
	t := TennisGame new.
	t playerWin:2.
	self assert: t scorePlayer2 equals: 15
]

{ #category : #tests }
TennisGameTest >> testWhenSetStartsScoreOfBothPlayersIsZero [
	| t |
	t := TennisGame new.
	self assert: t scorePlayer1 equals: 0.
	self assert: t scorePlayer2 equals: 0
]
