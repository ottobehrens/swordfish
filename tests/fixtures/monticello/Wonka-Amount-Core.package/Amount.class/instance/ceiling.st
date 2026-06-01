truncation and round off
ceiling
	"Answer the integer nearest the receiver toward positive infinity."

	^ self copy
		privateSetNumber: number ceiling;
		yourself