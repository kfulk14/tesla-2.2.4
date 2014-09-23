package teslaV2

class AdminController {

	def index(Integer max) {
		params.max = Math.min(max ?: 10, 100)
        [modelInstanceList: Model.list(params), modelInstanceTotal: Model.count(),
		modelSpecInstanceList: ModelSpec.list(params), modelSpecInstanceTotal: ModelSpec.count()]
		
	
		}
	
	
   
	
	
		
		
	}

