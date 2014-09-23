package teslaV2

import org.springframework.dao.DataIntegrityViolationException

class ModelSpecController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [modelSpecInstanceList: ModelSpec.list(params), modelSpecInstanceTotal: ModelSpec.count()]
    }

    def create() {
        [modelSpecInstance: new ModelSpec(params)]
    }

    def save() {
        def modelSpecInstance = new ModelSpec(params)
        if (!modelSpecInstance.save(flush: true)) {
            render(view: "create", model: [modelSpecInstance: modelSpecInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'modelSpec.label', default: 'ModelSpec'), modelSpecInstance.id])
        redirect(action: "show", id: modelSpecInstance.id)
    }

    def show(Long id) {
        def modelSpecInstance = ModelSpec.get(id)
        if (!modelSpecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modelSpec.label', default: 'ModelSpec'), id])
            redirect(action: "list")
            return
        }

        [modelSpecInstance: modelSpecInstance]
    }

    def edit(Long id) {
        def modelSpecInstance = ModelSpec.get(id)
        if (!modelSpecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modelSpec.label', default: 'ModelSpec'), id])
            redirect(action: "list")
            return
        }

        [modelSpecInstance: modelSpecInstance]
    }

    def update(Long id, Long version) {
        def modelSpecInstance = ModelSpec.get(id)
        if (!modelSpecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modelSpec.label', default: 'ModelSpec'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (modelSpecInstance.version > version) {
                modelSpecInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'modelSpec.label', default: 'ModelSpec')] as Object[],
                          "Another user has updated this ModelSpec while you were editing")
                render(view: "edit", model: [modelSpecInstance: modelSpecInstance])
                return
            }
        }

        modelSpecInstance.properties = params

        if (!modelSpecInstance.save(flush: true)) {
            render(view: "edit", model: [modelSpecInstance: modelSpecInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'modelSpec.label', default: 'ModelSpec'), modelSpecInstance.id])
        redirect(action: "show", id: modelSpecInstance.id)
    }

    def delete(Long id) {
        def modelSpecInstance = ModelSpec.get(id)
        if (!modelSpecInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'modelSpec.label', default: 'ModelSpec'), id])
            redirect(action: "list")
            return
        }

        try {
            modelSpecInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'modelSpec.label', default: 'ModelSpec'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'modelSpec.label', default: 'ModelSpec'), id])
            redirect(action: "show", id: id)
        }
    }
}
