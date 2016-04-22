package interviewcalls



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class InterviewCallController {
//	static navigation = true
	
    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond InterviewCall.list(params), model:[callInstanceCount: InterviewCall.count()]
    }

    def show(InterviewCall callInstance) {
        respond callInstance
    }

    def create() {
        respond new InterviewCall(params)
    }

    @Transactional
    def save(InterviewCall callInstance) {
        if (callInstance == null) {
            notFound()
            return
        }

        if (callInstance.hasErrors()) {
            respond callInstance.errors, view:'create'
            return
        }

        callInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'call.label', default: 'Call'), callInstance.id])
                redirect callInstance
            }
            '*' { respond callInstance, [status: CREATED] }
        }
    }

    def edit(InterviewCall callInstance) {
        respond callInstance
    }

    @Transactional
    def update(InterviewCall callInstance) {
        if (callInstance == null) {
            notFound()
            return
        }

        if (callInstance.hasErrors()) {
            respond callInstance.errors, view:'edit'
            return
        }

        callInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Call.label', default: 'Call'), callInstance.id])
                redirect callInstance
            }
            '*'{ respond callInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(InterviewCall callInstance) {

        if (callInstance == null) {
            notFound()
            return
        }

        callInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Call.label', default: 'Call'), callInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'call.label', default: 'Call'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	def search = {
		if(params.query){
			def calls = InterviewCall.search(params.query,[reload:true]).results
			[calls : calls]
		}
	}
}
