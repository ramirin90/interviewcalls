package interviewcalls



import grails.test.mixin.*
import spock.lang.*

@TestFor(InterviewerController)
@Mock(Interviewer)
class InterviewerControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when:"The index action is executed"
            controller.index()

        then:"The model is correct"
            !model.interviewerInstanceList
            model.interviewerInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when:"The create action is executed"
            controller.create()

        then:"The model is correctly created"
            model.interviewerInstance!= null
    }

    void "Test the save action correctly persists an instance"() {

        when:"The save action is executed with an invalid instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'POST'
            def interviewer = new Interviewer()
            interviewer.validate()
            controller.save(interviewer)

        then:"The create view is rendered again with the correct model"
            model.interviewerInstance!= null
            view == 'create'

        when:"The save action is executed with a valid instance"
            response.reset()
            populateValidParams(params)
            interviewer = new Interviewer(params)

            controller.save(interviewer)

        then:"A redirect is issued to the show action"
            response.redirectedUrl == '/interviewer/show/1'
            controller.flash.message != null
            Interviewer.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when:"The show action is executed with a null domain"
            controller.show(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the show action"
            populateValidParams(params)
            def interviewer = new Interviewer(params)
            controller.show(interviewer)

        then:"A model is populated containing the domain instance"
            model.interviewerInstance == interviewer
    }

    void "Test that the edit action returns the correct model"() {
        when:"The edit action is executed with a null domain"
            controller.edit(null)

        then:"A 404 error is returned"
            response.status == 404

        when:"A domain instance is passed to the edit action"
            populateValidParams(params)
            def interviewer = new Interviewer(params)
            controller.edit(interviewer)

        then:"A model is populated containing the domain instance"
            model.interviewerInstance == interviewer
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when:"Update is called for a domain instance that doesn't exist"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'PUT'
            controller.update(null)

        then:"A 404 error is returned"
            response.redirectedUrl == '/interviewer/index'
            flash.message != null


        when:"An invalid domain instance is passed to the update action"
            response.reset()
            def interviewer = new Interviewer()
            interviewer.validate()
            controller.update(interviewer)

        then:"The edit view is rendered again with the invalid instance"
            view == 'edit'
            model.interviewerInstance == interviewer

        when:"A valid domain instance is passed to the update action"
            response.reset()
            populateValidParams(params)
            interviewer = new Interviewer(params).save(flush: true)
            controller.update(interviewer)

        then:"A redirect is issues to the show action"
            response.redirectedUrl == "/interviewer/show/$interviewer.id"
            flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when:"The delete action is called for a null instance"
            request.contentType = FORM_CONTENT_TYPE
            request.method = 'DELETE'
            controller.delete(null)

        then:"A 404 is returned"
            response.redirectedUrl == '/interviewer/index'
            flash.message != null

        when:"A domain instance is created"
            response.reset()
            populateValidParams(params)
            def interviewer = new Interviewer(params).save(flush: true)

        then:"It exists"
            Interviewer.count() == 1

        when:"The domain instance is passed to the delete action"
            controller.delete(interviewer)

        then:"The instance is deleted"
            Interviewer.count() == 0
            response.redirectedUrl == '/interviewer/index'
            flash.message != null
    }
}
