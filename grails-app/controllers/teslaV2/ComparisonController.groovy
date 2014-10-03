package teslaV2

import org.springframework.dao.DataIntegrityViolationException




class ComparisonController {

	SecurityService securityService
	CompareService compareService

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [comparisonInstanceList: Comparison.list(params), comparisonInstanceTotal: Comparison.count()]
    }

    def create() {
        [comparisonInstance: new Comparison(params)]
    }

    def save() {
        def comparisonInstance = new Comparison(params)
        if (!comparisonInstance.save(flush: true)) {
            render(view: "create", model: [comparisonInstance: comparisonInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'comparison.label', default: 'Comparison'), comparisonInstance.id])
        redirect(action: "show", id: comparisonInstance.id)
    }

    def show() {
//        def comparisonInstance = Comparison.get(id)
//        if (!comparisonInstance) {
//            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comparison.label', default: 'Comparison'), id])
//            redirect(action: "list")
//            return
//        }
//		[comparisonInstance: comparisonInstance]

	//Use securityService to get firstname of user 
		User buyer = securityService.currentUser()
		
		
		//User currentUser = securityService.currentUser()
		
	//Return the comparison table list with the name of the user 	
		return ['c': Comparison.findAllByBuyer(buyer), 'buyer':buyer, 'modelName':Model.findById(1)] 
		
		
    }

    def edit(Long id) {
        def comparisonInstance = Comparison.get(id)
        if (!comparisonInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comparison.label', default: 'Comparison'), id])
            redirect(action: "list")
            return
        }

        [comparisonInstance: comparisonInstance]
    }

    def update(Long id, Long version) {
        def comparisonInstance = Comparison.get(id)
        if (!comparisonInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comparison.label', default: 'Comparison'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (comparisonInstance.version > version) {
                comparisonInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'comparison.label', default: 'Comparison')] as Object[],
                          "Another user has updated this Comparison while you were editing")
                render(view: "edit", model: [comparisonInstance: comparisonInstance])
                return
            }
        }

        comparisonInstance.properties = params

        if (!comparisonInstance.save(flush: true)) {
            render(view: "edit", model: [comparisonInstance: comparisonInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'comparison.label', default: 'Comparison'), comparisonInstance.id])
        redirect(action: "show", id: comparisonInstance.id)
    }

    def delete(Long id) {
        def comparisonInstance = Comparison.get(id)
        if (!comparisonInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'comparison.label', default: 'Comparison'), id])
            redirect(action: "show")
            return
        }

        try {
            comparisonInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'comparison.label', default: 'Comparison'), id])
            redirect(action: "show")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'comparison.label', default: 'Comparison'), id])
            redirect(action: "show", id: id)
        }
	
    }
	
//Take the first and only user and adds to comparison table along with the spec Id 
	def compare(Long id){		
		ModelSpec spec = ModelSpec.get(id)
		//Checks to make sure the specModel Id exsists in the database before saving 
		if( !spec){
			render 'Spec Number Doesnt Exsist'  
		}
		//If specModel number does exist it will save to database
//		Comparison c  = new Comparison(buyer:securityService.currentUser(), spec:spec)
////		c.save()
		//Same as above but uses the Compare Service to access the data 
		Comparison c = compareService.create(securityService.currentUser(), spec)
		
		//Get the name of the model from the spec table modelId key and get name from Model Table
		Model model = c.spec.model
		
		return ['c':c, 'model':model]
		
	
		
//		render compareService.currentModel() as JSON
		
//		render securityService.currentUser() as JSON
//		render User.first() as JSON
		
		
	}
	
	
}
