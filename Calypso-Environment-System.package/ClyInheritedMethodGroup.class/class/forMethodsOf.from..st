instance creation
forMethodsOf: aClass from: aClassScope
	
	| methodQuery |
	methodQuery := ClyAllMethods from: ClyClassScope of: { aClass }.
				
	^(self named: aClass name on: methodQuery)
		visibilityLevels: { ClySuperclassVisibilityLevel of: aClassScope toShow: aClass }