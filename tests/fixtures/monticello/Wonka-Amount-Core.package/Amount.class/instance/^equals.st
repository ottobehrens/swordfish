testing
= other
	^ (self canBeComparedWith: other) and: [ self isNearlyTheSameNumberAs: other number ]