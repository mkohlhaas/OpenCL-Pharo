Class {
	#name : #OpenCLOpaqueTypes,
	#superclass : #OpenCLTypes,
	#classVars : [
		'cl_platform_id'
	],
	#category : #'OpenCL-FFI-OpenCL-FFI'
}

{ #category : #'class initialization' }
OpenCLOpaqueTypes class >> initialize [

	cl_platform_id := #FFIOpaqueObject
]
