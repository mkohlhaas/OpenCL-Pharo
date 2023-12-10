Class {
	#name : #OpenCLAuxiliary,
	#superclass : #OpenCLTypes,
	#classVars : [
		'char64Array'
	],
	#category : #'OpenCL-FFI-OpenCL-FFI'
}

{ #category : #'class initialization' }
OpenCLAuxiliary class >> initialize [

	char64Array := FFIArray newArrayTypeOf: #char size: 64
]
