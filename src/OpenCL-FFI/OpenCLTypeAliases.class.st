Class {
	#name : #OpenCLTypeAliases,
	#superclass : #OpenCLTypes,
	#classVars : [
		'cl_int'
	],
	#classInstVars : [
		'cl_int',
		'cl_uint'
	],
	#category : #'OpenCL-FFI-OpenCL-FFI'
}

{ #category : #'class initialization' }
OpenCLTypeAliases class >> initialize [

	cl_int := #int.
	cl_uint := #unsignedLong
]
