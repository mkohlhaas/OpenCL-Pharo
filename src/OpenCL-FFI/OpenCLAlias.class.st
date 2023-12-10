Class {
	#name : #OpenCLAlias,
	#superclass : #OpenCLTypes,
	#classVars : [
		'cl_int',
		'cl_uint'
	],
	#category : #'OpenCL-FFI-OpenCL-FFI'
}

{ #category : #'class initialization' }
OpenCLAlias class >> initialize [

	cl_int := #int32.
	cl_uint := #uint32
]
