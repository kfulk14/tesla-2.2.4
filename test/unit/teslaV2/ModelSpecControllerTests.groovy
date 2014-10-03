package teslaV2



import org.junit.*
import grails.test.mixin.*

@TestFor(ModelSpecController)
@Mock(ModelSpec)
class ModelSpecControllerTests {

    def populateValidParams(params) {
        assert params != null
        // Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/modelSpec/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.modelSpecInstanceList.size() == 0
        assert model.modelSpecInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.modelSpecInstance != null
    }

    void testSave() {
        controller.save()

        assert model.modelSpecInstance != null
        assert view == '/modelSpec/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/modelSpec/show/1'
        assert controller.flash.message != null
        assert ModelSpec.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/modelSpec/list'

        populateValidParams(params)
        def modelSpec = new ModelSpec(params)

        assert modelSpec.save() != null

        params.id = modelSpec.id

        def model = controller.show()

        assert model.modelSpecInstance == modelSpec
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/modelSpec/list'

        populateValidParams(params)
        def modelSpec = new ModelSpec(params)

        assert modelSpec.save() != null

        params.id = modelSpec.id

        def model = controller.edit()

        assert model.modelSpecInstance == modelSpec
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/modelSpec/list'

        response.reset()

        populateValidParams(params)
        def modelSpec = new ModelSpec(params)

        assert modelSpec.save() != null

        // test invalid parameters in update
        params.id = modelSpec.id
        // add invalid values to params object

        controller.update()

        assert view == "/modelSpec/edit"
        assert model.modelSpecInstance != null

        modelSpec.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/modelSpec/show/$modelSpec.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        modelSpec.clearErrors()

        populateValidParams(params)
        params.id = modelSpec.id
        params.version = -1
        controller.update()

        assert view == "/modelSpec/edit"
        assert model.modelSpecInstance != null
        assert model.modelSpecInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/modelSpec/list'

        response.reset()

        populateValidParams(params)
        def modelSpec = new ModelSpec(params)

        assert modelSpec.save() != null
        assert ModelSpec.count() == 1

        params.id = modelSpec.id

        controller.delete()

        assert ModelSpec.count() == 0
        assert ModelSpec.get(modelSpec.id) == null
        assert response.redirectedUrl == '/modelSpec/list'
    }
}
