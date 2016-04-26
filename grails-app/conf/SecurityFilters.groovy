class SecurityFilters {
	def filters = {
		doLogin(controller:'*', action:'*'){
			before = {
				if (!controllerName)
					return true
				def allowedActions = ['show', 'index', 'login','validate', 'search']
//				def allowedActions = ['show','login','validate', 'search']
				if (!session.user && !allowedActions.contains(actionName)){
					redirect(controller:'recruiter', action:'login',
							 params:['cName': controllerName,
									 'aName':actionName])
					return false
				}
			}
		}
	}
}
