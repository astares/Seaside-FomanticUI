Class {
	#name : #BaselineOfFomanticUI,
	#superclass : #Object,
	#category : #BaselineOfFomanticUI
}

{ #category : #baseline }
BaselineOfFomanticUI >> baseline: spec [ 
	<baseline>
	
	spec for: #'common' do: [ 
		self seaside: spec.
		
		spec 
			package: 'FomanticUI-Core' with: [ spec requires: #('Seaside3') ];
		 	package: 'FomanticUI-Core-Tests' with: [ spec requires: #('FomanticUI-Core') ];	
			package: 'FomanticUI-Examples' with: [ spec requires: #('FomanticUI-Core') ].

		spec 
			group: 'Core' with: #('FomanticUI-Core');
			group: 'Tests' with: #('FomanticUI-Core-Tests');
			group: 'Examples' with: #('FomanticUI-Examples');
			group: 'all' with: #('Tests' 'Examples');
			group: 'default' with: #('all').
	]

]

{ #category : #baseline }
BaselineOfFomanticUI >> seaside: spec [

	spec
			baseline: 'Seaside3'
        	with: [ 
				spec
					loads: #('default');
					repository: 'github://SeasideSt/Seaside:master/repository' ]
]
