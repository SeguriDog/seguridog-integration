package co.com.seguridog


import grails.test.mixin.*
import spock.lang.*

@TestFor(K9PerformanceController)
@Mock(K9Performance)
class K9PerformanceControllerSpec extends Specification {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void "Test the index action returns the correct model"() {

        when: "The index action is executed"
        controller.index()

        then: "The model is correct"
        !model.k9PerformanceInstanceList
        model.k9PerformanceInstanceCount == 0
    }

    void "Test the create action returns the correct model"() {
        when: "The create action is executed"
        controller.create()

        then: "The model is correctly created"
        model.k9PerformanceInstance != null
    }

    void "Test the save action correctly persists an instance"() {

        when: "The save action is executed with an invalid instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'POST'
        def k9Performance = new K9Performance()
        k9Performance.validate()
        controller.save(k9Performance)

        then: "The create view is rendered again with the correct model"
        model.k9PerformanceInstance != null
        view == 'create'

        when: "The save action is executed with a valid instance"
        response.reset()
        populateValidParams(params)
        k9Performance = new K9Performance(params)

        controller.save(k9Performance)

        then: "A redirect is issued to the show action"
        response.redirectedUrl == '/k9Performance/show/1'
        controller.flash.message != null
        K9Performance.count() == 1
    }

    void "Test that the show action returns the correct model"() {
        when: "The show action is executed with a null domain"
        controller.show(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the show action"
        populateValidParams(params)
        def k9Performance = new K9Performance(params)
        controller.show(k9Performance)

        then: "A model is populated containing the domain instance"
        model.k9PerformanceInstance == k9Performance
    }

    void "Test that the edit action returns the correct model"() {
        when: "The edit action is executed with a null domain"
        controller.edit(null)

        then: "A 404 error is returned"
        response.status == 404

        when: "A domain instance is passed to the edit action"
        populateValidParams(params)
        def k9Performance = new K9Performance(params)
        controller.edit(k9Performance)

        then: "A model is populated containing the domain instance"
        model.k9PerformanceInstance == k9Performance
    }

    void "Test the update action performs an update on a valid domain instance"() {
        when: "Update is called for a domain instance that doesn't exist"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'PUT'
        controller.update(null)

        then: "A 404 error is returned"
        response.redirectedUrl == '/k9Performance/index'
        flash.message != null


        when: "An invalid domain instance is passed to the update action"
        response.reset()
        def k9Performance = new K9Performance()
        k9Performance.validate()
        controller.update(k9Performance)

        then: "The edit view is rendered again with the invalid instance"
        view == 'edit'
        model.k9PerformanceInstance == k9Performance

        when: "A valid domain instance is passed to the update action"
        response.reset()
        populateValidParams(params)
        k9Performance = new K9Performance(params).save(flush: true)
        controller.update(k9Performance)

        then: "A redirect is issues to the show action"
        response.redirectedUrl == "/k9Performance/show/$k9Performance.id"
        flash.message != null
    }

    void "Test that the delete action deletes an instance if it exists"() {
        when: "The delete action is called for a null instance"
        request.contentType = FORM_CONTENT_TYPE
        request.method = 'DELETE'
        controller.delete(null)

        then: "A 404 is returned"
        response.redirectedUrl == '/k9Performance/index'
        flash.message != null

        when: "A domain instance is created"
        response.reset()
        populateValidParams(params)
        def k9Performance = new K9Performance(params).save(flush: true)

        then: "It exists"
        K9Performance.count() == 1

        when: "The domain instance is passed to the delete action"
        controller.delete(k9Performance)

        then: "The instance is deleted"
        K9Performance.count() == 0
        response.redirectedUrl == '/k9Performance/index'
        flash.message != null
    }
}
