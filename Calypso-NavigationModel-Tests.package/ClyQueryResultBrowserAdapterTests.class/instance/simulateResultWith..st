running
simulateResultWith: actualItems

	query := ClyConstantQuery returning: actualItems as: self createQueryResult.
	query scope: (ClyScopeExample of: #someBasis in: environment). 
	queryResult := query execute