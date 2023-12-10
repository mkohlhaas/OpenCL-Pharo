Class {
	#name : #OpenCLAlias,
	#superclass : #OpenCLTypes,
	#classVars : [
		'Cl_int',
		'Cl_uint'
	],
	#category : #'OpenCL-FFI-OpenCL-FFI'
}

{ #category : #'class initialization' }
OpenCLAlias class >> initialize [

	Cl_int := #int.
	Cl_uint := #uint
]
