Class {
	#name : #Azure,
	#superclass : #Object,
	#category : #SCTE
}

{ #category : #authorization }
Azure class >> getAccessTokenUsing: config [

	| client dict |
	client := ZnClient new
		          https;
		          host: 'login.microsoftonline.com';
		          addPath: (config at: 'tenantId');
		          addPath: 'oauth2/v2.0/token';
		          formAt: 'client_id' put: (config at: 'clientId');
		          formAt: 'client_secret' put: (config at: 'clientSecret');
		          formAt: 'scope' put: (config at: 'scope');
		          formAt: 'grant_type' put: 'client_credentials'.
	client request headers
		at: 'Content-type'
		put: 'application/x-www-form-urlencoded'.
	client post.
	client isSuccess ifFalse: [ ^ self ].
	dict := NeoJSONReader fromString: client contents.
	^ dict at: 'access_token'
	
]

{ #category : #authorization }
Azure class >> getDeploymentConfig [
	| dict |
	dict := Dictionary new.
	dict
		at: 'tenantId' put: '72f988bf-86f1-41af-91ab-2d7cd011db47';
		at: 'clientId' put: '2470ca86-3843-4aa2-95b8-97d3a912ff69';
		at: 'clientSecret' put: '2y~8Q~blSah_XVUIGOzQ9IAzpyCZ1PicJCiBtbUc';
		at: 'scope'
		put:
			'https://microsoft.onmicrosoft.com/3b4ae08b-9919-4749-bb5b-7ed4ef15964d/.default'.
	^ dict
]

{ #category : #authorization }
Azure class >> getZwpdbhConfig [ 

	| dict |
	dict := Dictionary new.
	dict
		at: 'tenantId' put: '72f988bf-86f1-41af-91ab-2d7cd011db47';
		at: 'clientId' put: '2470ca86-3843-4aa2-95b8-97d3a912ff69';
		at: 'clientSecret' put: '2y~8Q~blSah_XVUIGOzQ9IAzpyCZ1PicJCiBtbUc';
		at: 'scope'
		put:
			'https://management.azure.com/.default'.
	^ dict
]
