arithmetic
/ anAmount
	self assert: anAmount isNumber.
	^ anAmount isZero
		ifTrue: [ self divideByZeroCheck: anAmount ]
		ifFalse: [ (self unitForDivisionWith: anAmount) amountFromFloat: number / anAmount number ]