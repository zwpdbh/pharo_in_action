Class {
	#name : #DeploymentService,
	#superclass : #Object,
	#category : #SCTE
}

{ #category : #workflow }
DeploymentService class >> getWorkflowFrom: id [ 
| accessToken |
accessToken := Azure getAccessTokenUsing: (Azure getDeploymentConfig).
^ (DeploymentService getWorkflowFrom: id withAccessToken: accessToken)
]

{ #category : #workflow }
DeploymentService class >> getWorkflowFrom: id withAccessToken: token [
"Get DeploymentService workflow detail from id with access token using DeploymentService service principal."
	| client |
	client := ZnClient new url:
		          'https://xscndeploymentservice.westus2.cloudapp.azure.com/api/Workflow/'
		          , id.

	client request headers
		at: 'Content-type' put: 'application/json';
		at: 'accept' put: 'text/plain';
		at: 'Authorization' put: 'Bearer ' , token.

	client get.
	client isSuccess ifFalse: [ ^ self ].
	^ NeoJSONReader fromString: client contents
]
