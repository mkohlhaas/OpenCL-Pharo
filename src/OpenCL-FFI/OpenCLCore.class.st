"
Entry point for all functions from the C library.
"
Class {
	#name : #OpenCLCore,
	#superclass : #Object,
	#pools : [
		'OpenCLAuxiliaryTypes',
		'OpenCLEnums',
		'OpenCLOpaqueTypes',
		'OpenCLTypeAliases'
	],
	#category : #'OpenCL-FFI-OpenCL-FFI'
}

{ #category : #accessing }
OpenCLCore class >> ffiLibrary [

	^ OpenCLLib
]

{ #category : #'ffi-calls' }
OpenCLCore class >> getDeviceIDs: platform deviceType: device_type numEntries: num_entries deviceId: devices numDevices: numDevices [

	^ self ffiCall: #(cl_int clGetDeviceIDs ( cl_platform_id platform,
	                                          cl_device_type device_type,
	                                          cl_uint        num_entries,
	                                          cl_device_id * devices,
	                                          cl_uint *      num_devices) ).


	
]

{ #category : #'ffi-calls' }
OpenCLCore class >> getPlatformIDs: num_entries platforms: platforms numPlatforms: num_platforms [

	^ self ffiCall:	#( Cl_int clGetPlatformIDs ( Cl_uint num_entries , Cl_platform_id * platforms , Cl_uint * num_platforms ) )
]
