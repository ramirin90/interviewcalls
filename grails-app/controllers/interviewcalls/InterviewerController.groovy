package interviewcalls



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class InterviewerController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Interviewer.list(params), model:[interviewerInstanceCount: Interviewer.count()]
    }

    def show(Interviewer interviewerInstance) {
        respond interviewerInstance
    }

    def create() {
        respond new Interviewer(params)
    }

    @Transactional
    def save(Interviewer interviewerInstance) {
        if (interviewerInstance == null) {
            notFound()
            return
        }

        if (interviewerInstance.hasErrors()) {
            respond interviewerInstance.errors, view:'create'
            return
        }

        interviewerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'interviewer.label', default: 'Interviewer'), interviewerInstance.id])
                redirect interviewerInstance
            }
            '*' { respond interviewerInstance, [status: CREATED] }
        }
    }

    def edit(Interviewer interviewerInstance) {
        respond interviewerInstance
    }

    @Transactional
    def update(Interviewer interviewerInstance) {
        if (interviewerInstance == null) {
            notFound()
            return
        }

        if (interviewerInstance.hasErrors()) {
            respond interviewerInstance.errors, view:'edit'
            return
        }

        interviewerInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Interviewer.label', default: 'Interviewer'), interviewerInstance.id])
                redirect interviewerInstance
            }
            '*'{ respond interviewerInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Interviewer interviewerInstance) {

        if (interviewerInstance == null) {
            notFound()
            return
        }

        interviewerInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Interviewer.label', default: 'Interviewer'), interviewerInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'interviewer.label', default: 'Interviewer'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	def contact(){
		
	}
	

	def search = {
		if(params.query){
			def interviewers = Interviewer.search(params.query,[reload:true]).results
			[interviewers : interviewers]
		}
	}
	
}
