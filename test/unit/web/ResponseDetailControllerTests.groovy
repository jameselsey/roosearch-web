package web



import org.junit.*
import grails.test.mixin.*

@TestFor(ResponseDetailController)
@Mock(ResponseDetail)
class ResponseDetailControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/responseDetail/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.responseDetailInstanceList.size() == 0
        assert model.responseDetailInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.responseDetailInstance != null
    }

    void testSave() {
        controller.save()

        assert model.responseDetailInstance != null
        assert view == '/responseDetail/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/responseDetail/show/1'
        assert controller.flash.message != null
        assert ResponseDetail.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/responseDetail/list'

        populateValidParams(params)
        def responseDetail = new ResponseDetail(params)

        assert responseDetail.save() != null

        params.id = responseDetail.id

        def model = controller.show()

        assert model.responseDetailInstance == responseDetail
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/responseDetail/list'

        populateValidParams(params)
        def responseDetail = new ResponseDetail(params)

        assert responseDetail.save() != null

        params.id = responseDetail.id

        def model = controller.edit()

        assert model.responseDetailInstance == responseDetail
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/responseDetail/list'

        response.reset()

        populateValidParams(params)
        def responseDetail = new ResponseDetail(params)

        assert responseDetail.save() != null

        // test invalid parameters in update
        params.id = responseDetail.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/responseDetail/edit"
        assert model.responseDetailInstance != null

        responseDetail.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/responseDetail/show/$responseDetail.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        responseDetail.clearErrors()

        populateValidParams(params)
        params.id = responseDetail.id
        params.version = -1
        controller.update()

        assert view == "/responseDetail/edit"
        assert model.responseDetailInstance != null
        assert model.responseDetailInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/responseDetail/list'

        response.reset()

        populateValidParams(params)
        def responseDetail = new ResponseDetail(params)

        assert responseDetail.save() != null
        assert ResponseDetail.count() == 1

        params.id = responseDetail.id

        controller.delete()

        assert ResponseDetail.count() == 0
        assert ResponseDetail.get(responseDetail.id) == null
        assert response.redirectedUrl == '/responseDetail/list'
    }
}
