Class {
	#name : #OpenCLPlatform,
	#superclass : #OpenCLSetup,
	#category : #OpenCL
}

{ #category : #accessing }
OpenCLPlatform class >> count [

	| errorCode num_platforms |
	num_platforms := ExternalAddress allocate:
		                 FFIExternalType pointerSize.
	errorCode := OpenCLFn
		             getPlatformIDs: 0
		             platforms: ExternalAddress null
		             numPlatforms: num_platforms.
	^ num_platforms uint32AtOffset: 0
]

{ #category : #accessing }
OpenCLPlatform class >> list [

	| errorCode num_platforms platforms |
	num_platforms := ExternalAddress allocate: FFIExternalType pointerSize.
	platforms := ExternalAddress allocate: FFIExternalType pointerSize.
	errorCode := OpenCLFn
		             getPlatformIDs: 0
		             platforms: platforms
		             numPlatforms: num_platforms.
	^ platforms
]
