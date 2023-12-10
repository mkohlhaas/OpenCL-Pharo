Class {
	#name : #OpenCLOpaqueTypes,
	#superclass : #OpenCLTypes,
	#classVars : [
		'Cl_platform_id'
	],
	#category : #'OpenCL-FFI-OpenCL-FFI'
}

{ #category : #'class initialization' }
OpenCLOpaqueTypes class >> initialize [

	Cl_platform_id := #FFIOpaqueObject
]
