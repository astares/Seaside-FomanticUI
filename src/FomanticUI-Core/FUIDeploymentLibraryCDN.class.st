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

	anHtmlRoot javascript:
		'https://cdn.jsdelivr.net/npm/jquery@3.3.1/dist/jquery.min.js'.
	anHtmlRoot stylesheet url:
		'https://cdn.jsdelivr.net/npm/fomantic-ui@2.8.7/dist/semantic.min.css'.
	anHtmlRoot javascript:
		'https://cdn.jsdelivr.net/npm/fomantic-ui@2.8.7/dist/semantic.min.js'
]
