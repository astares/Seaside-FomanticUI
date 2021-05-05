"
Main entry component for the examples
"
Class {
	#name : #FUIExamplesHome,
	#superclass : #FUIRootComponent,
	#category : #'FomanticUI-Examples-Home'
}

{ #category : #utilities }
FUIExamplesHome class >> browse [
	<script>
	
	WebBrowser openOn: 'http://localhost:8080/', self contextRoot 
]

{ #category : #accessing }
FUIExamplesHome class >> contextRoot [

	^'fomanticUI'
]

{ #category : #'class initialization' }
FUIExamplesHome class >> initialize [

	self register
]

{ #category : #registration }
FUIExamplesHome class >> register [

	|app|
	app := super register.
	app 
		addLibrary: FUIDeploymentLibraryCDN 
]

{ #category : #rendering }
FUIExamplesHome >> renderContentOn: html [

	html 
		div 
			class: 'ui left icon input focus';
			with: [ html textInput ].

	html html: '<div class="ui placeholder segment">
  <div class="ui two column stackable center aligned grid">
    <div class="ui vertical divider">Or</div>
    <div class="middle aligned row">
      <div class="column">
        <div class="ui icon header">
          <i class="search icon"></i>
          Find Country
        </div>
        <div class="field">
          <div class="ui search">
            <div class="ui icon input">
              <input class="prompt" type="text" placeholder="Search countries...">
              <i class="search icon"></i>
            </div>
            <div class="results"></div>
          </div>
        </div>
      </div>
      <div class="column">
        <div class="ui icon header">
          <i class="world icon"></i>
          Add New Country
        </div>
        <div class="ui primary button">
          Create
        </div>
      </div>
    </div>
  </div>
</div>
'
]
