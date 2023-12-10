Class {
	#name : #OpenCLAuxiliaryTypes,
	#superclass : #OpenCLTypes,
	#classVars : [
		'Char64Array'
	],
	#category : #'OpenCL-FFI-OpenCL-FFI'
}

{ #category : #'class initialization' }
OpenCLAuxiliaryTypes class >> initialize [

	Char64Array := FFIArray newArrayTypeOf: #char size: 64
]
