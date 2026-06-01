*Wonka-Amount-Core
readFromString: aString decimalFormat: decimalFormat
	"Create an object based on the contents of aString."

	<ignoreLintRule: #RBSendsDifferentSuperRule rationale: 'Not correct in this case.'>
	^ aString withBlanksRemoved
		ifNotEmpty: [ :string | 
			[ super
				readFromString:
					(AmountParser new
						decimalFormat: decimalFormat;
						numberStream: string readStream;
						withoutThousandSeparators) ]
				on: Error
				do: [ :ex | ValidateError signal: ex printableDescription , ' ' , aString ] ]
		ifEmpty: [ nil ]