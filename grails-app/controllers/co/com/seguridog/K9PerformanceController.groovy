package co.com.seguridog


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class K9PerformanceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond K9Performance.list(params), model: [k9PerformanceInstanceCount: K9Performance.count()]
    }

    def show(K9Performance k9PerformanceInstance) {
        respond k9PerformanceInstance
    }

    def create() {
        respond new K9Performance(params)
    }

    @Transactional
    def save(K9Performance k9PerformanceInstance) {
        if (k9PerformanceInstance == null) {
            notFound()
            return
        }

        if (k9PerformanceInstance.hasErrors()) {
            respond k9PerformanceInstance.errors, view: 'create'
            return
        }

        k9PerformanceInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'k9Performance.label', default: 'K9Performance'), k9PerformanceInstance.id])
                redirect k9PerformanceInstance
            }
            '*' { respond k9PerformanceInstance, [status: CREATED] }
        }
    }

    def edit(K9Performance k9PerformanceInstance) {
        respond k9PerformanceInstance
    }

    @Transactional
    def update(K9Performance k9PerformanceInstance) {
        if (k9PerformanceInstance == null) {
            notFound()
            return
        }

        if (k9PerformanceInstance.hasErrors()) {
            respond k9PerformanceInstance.errors, view: 'edit'
            return
        }

        k9PerformanceInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'K9Performance.label', default: 'K9Performance'), k9PerformanceInstance.id])
                redirect k9PerformanceInstance
            }
            '*' { respond k9PerformanceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(K9Performance k9PerformanceInstance) {

        if (k9PerformanceInstance == null) {
            notFound()
            return
        }

        k9PerformanceInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'K9Performance.label', default: 'K9Performance'), k9PerformanceInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'k9Performance.label', default: 'K9Performance'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
