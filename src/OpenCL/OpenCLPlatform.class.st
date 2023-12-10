Class {
	#name : #OpenCLPlatform,
	#superclass : #OpenCLSetup,
	#category : #OpenCL
}

{ #category : #accessing }
OpenCLPlatform class >> count [

	| errorCode num_platforms |
	num_platforms := ExternalAddress newPointer.
	errorCode := OpenCLFn
		             getPlatformIDs: 0
		             platforms: ExternalAddress null
		             numPlatforms: num_platforms.
	^ num_platforms uint32AtOffset: 0
]

{ #category : #accessing }
OpenCLPlatform class >> list [

	| errorCode platforms numPlatforms p count |
	count := self count.
	count <= 0 ifTrue: [ ^ self error: 'No platforms found.' ].
	platforms := ExternalAddress newPointer.
	numPlatforms := ExternalAddress newPointer.
	errorCode := OpenCLFn
		             getPlatformIDs: count
		             platforms: platforms
		             numPlatforms: numPlatforms.
	count := numPlatforms uint32AtOffset: 0.
	p := OrderedCollection new.
	1 to: count do: [ :i | platforms add: (platforms pointerAt: i) ].
	^ p
]
