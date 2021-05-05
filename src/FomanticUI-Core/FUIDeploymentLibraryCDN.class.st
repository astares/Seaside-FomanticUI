"
Default deployment library to deploy via CDN provider

see [https://fomantic-ui.com/introduction/getting-started.html](https://fomantic-ui.com/introduction/getting-started.html)


"
Class {
	#name : #FUIDeploymentLibraryCDN,
	#superclass : #FUIFileLibrary,
	#category : #'FomanticUI-Core-Libraries'
}

{ #category : #updating }
FUIDeploymentLibraryCDN >> updateRoot: anHtmlRoot [

	anHtmlRoot stylesheet url:
		'https://cdn.jsdelivr.net/npm/fomantic-ui@2.8.7/dist/semantic.min.css'.
	anHtmlRoot javascript url:
		'https://cdn.jsdelivr.net/npm/fomantic-ui@2.8.7/dist/semantic.min.js'
]
