Class {
	#name : #OpenCLErrorCodes,
	#superclass : #OpenCLConstants,
	#classVars : [
		'CL_SUCCES'
	],
	#category : #'OpenCL-FFI'
}

{ #category : #'class initialization' }
OpenCLErrorCodes class >> initialize [

	CL_SUCCES := 0
]
