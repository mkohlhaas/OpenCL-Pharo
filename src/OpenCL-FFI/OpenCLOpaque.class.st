Class {
	#name : #OpenCLOpaque,
	#superclass : #OpenCLTypes,
	#classVars : [
		'Cl_platform_id'
	],
	#category : #'OpenCL-FFI-OpenCL-FFI'
}

{ #category : #'class initialization' }
OpenCLOpaque class >> initialize [

	Cl_platform_id := #FFIOpaqueObject
]
