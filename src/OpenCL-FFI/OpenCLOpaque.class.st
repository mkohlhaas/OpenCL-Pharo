Class {
	#name : #OpenCLOpaque,
	#superclass : #OpenCLTypes,
	#classVars : [
		'cl_platform_id'
	],
	#category : #'OpenCL-FFI-OpenCL-FFI'
}

{ #category : #'class initialization' }
OpenCLOpaque class >> initialize [

	cl_platform_id := #FFIOpaqueObject
]
