Class {
	#name : #OpenCL,
	#superclass : #Object,
	#category : #'OpenCL-FFI'
}

{ #category : #'ffi-calls' }
OpenCL class >> numberOfPlatforms [

	| errorCode num_platforms |
	num_platforms := ExternalAddress allocate: FFIExternalType pointerSize.
	errorCode := OpenCLCore
		             getPlatformIDs: 0
		             platforms: ExternalAddress null
		             numPlatforms: num_platforms.
	^ num_platforms uint32AtOffset: 0
]

{ #category : #'ffi-calls' }
OpenCL class >> platforms [

	| errorCode num_platforms platforms |
	num_platforms := ExternalAddress allocate: FFIExternalType pointerSize.
	platforms := ExternalAddress allocate: FFIExternalType pointerSize.
	errorCode := OpenCLCore
		             getPlatformIDs: 0
		             platforms: platforms
		             numPlatforms: num_platforms.
	^ platforms
]
