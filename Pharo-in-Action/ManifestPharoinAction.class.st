"
Please describe the package using the class comment of the included manifest class. The manifest class also includes other additional metadata for the package. These meta data are used by other tools such as the SmalllintManifestChecker and the critics Browser
"
Class {
	#name : #ManifestPharoinAction,
	#superclass : #PackageManifest,
	#category : #'Pharo-in-Action-Manifest'
}

{ #category : #'code-critics' }
ManifestPharoinAction class >> ruleCodeCruftLeftInMethodsRuleV1FalsePositive [
	^ #(#(#(#RGPackageDefinition #(#'Pharo-in-Action')) #'2022-06-29T15:06:49.426+08:00') )
]
