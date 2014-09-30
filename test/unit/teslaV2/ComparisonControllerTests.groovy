package teslaV2



import org.junit.*
import grails.test.mixin.*

@TestFor(ComparisonController)
@Mock(Comparison)
class ComparisonControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/comparison/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.comparisonInstanceList.size() == 0
        assert model.comparisonInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.comparisonInstance != null
    }

    void testSave() {
        controller.save()

        assert model.comparisonInstance != null
        assert view == '/comparison/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/comparison/show/1'
        assert controller.flash.message != null
        assert Comparison.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/comparison/list'

        populateValidParams(params)
        def comparison = new Comparison(params)

        assert comparison.save() != null

        params.id = comparison.id

        def model = controller.show()

        assert model.comparisonInstance == comparison
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/comparison/list'

        populateValidParams(params)
        def comparison = new Comparison(params)

        assert comparison.save() != null

        params.id = comparison.id

        def model = controller.edit()

        assert model.comparisonInstance == comparison
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/comparison/list'

        response.reset()

        populateValidParams(params)
        def comparison = new Comparison(params)

        assert comparison.save() != null

        // test invalid parameters in update
        params.id = comparison.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/comparison/edit"
        assert model.comparisonInstance != null

        comparison.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/comparison/show/$comparison.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        comparison.clearErrors()

        populateValidParams(params)
        params.id = comparison.id
        params.version = -1
        controller.update()

        assert view == "/comparison/edit"
        assert model.comparisonInstance != null
        assert model.comparisonInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/comparison/list'

        response.reset()

        populateValidParams(params)
        def comparison = new Comparison(params)

        assert comparison.save() != null
        assert Comparison.count() == 1

        params.id = comparison.id

        controller.delete()

        assert Comparison.count() == 0
        assert Comparison.get(comparison.id) == null
        assert response.redirectedUrl == '/comparison/list'
    }
}
