"
A FUIDeploymentLibraryCDNTest is a test class for testing the behavior of FUIDeploymentLibraryCDN
"
Class {
	#name : #FUIDeploymentLibraryCDNTest,
	#superclass : #TestCase,
	#category : #'FomanticUI-Core-Tests-Libraries'
}

{ #category : #tests }
FUIDeploymentLibraryCDNTest >> testNoOwnFiles [
	"As it is CDN hosted we do not have own files in this library"
	
	self assert: FUIDeploymentLibraryCDN new filenames isEmpty
]
