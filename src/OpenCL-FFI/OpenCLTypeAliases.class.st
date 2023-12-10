Class {
	#name : #OpenCLTypeAliases,
	#superclass : #OpenCLTypes,
	#classVars : [
		'Cl_int',
		'Cl_uint'
	],
	#category : #'OpenCL-FFI-OpenCL-FFI'
}

{ #category : #'class initialization' }
OpenCLTypeAliases class >> initialize [

	Cl_int := #int.
	Cl_uint := #uint
]
