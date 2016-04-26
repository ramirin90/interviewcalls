package interviewcalls



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class RecruiterController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Recruiter.list(params), model:[recruiterInstanceCount: Recruiter.count()]
    }

    def show(Recruiter recruiterInstance) {
        respond recruiterInstance
    }

    def create() {
        respond new Recruiter(params)
    }

    @Transactional
    def save(Recruiter recruiterInstance) {
        if (recruiterInstance == null) {
            notFound()
            return
        }

        if (recruiterInstance.hasErrors()) {
            respond recruiterInstance.errors, view:'create'
            return
        }

        recruiterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'recruiter.label', default: 'Recruiter'), recruiterInstance.id])
                redirect recruiterInstance
            }
            '*' { respond recruiterInstance, [status: CREATED] }
        }
    }

    def edit(Recruiter recruiterInstance) {
        respond recruiterInstance
    }

    @Transactional
    def update(Recruiter recruiterInstance) {
        if (recruiterInstance == null) {
            notFound()
            return
        }

        if (recruiterInstance.hasErrors()) {
            respond recruiterInstance.errors, view:'edit'
            return
        }

        recruiterInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Recruiter.label', default: 'Recruiter'), recruiterInstance.id])
                redirect recruiterInstance
            }
            '*'{ respond recruiterInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Recruiter recruiterInstance) {

        if (recruiterInstance == null) {
            notFound()
            return
        }

        recruiterInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Recruiter.label', default: 'Recruiter'), recruiterInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'recruiter.label', default: 'Recruiter'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
	
	def login() {
		if (params.cName)
			return [cName:params.cName, aName:params.aName]
	}
	
	def logout = {
		session.user = null
		redirect(uri:'/')
	}
	
	def validate() {
		def user = Recruiter.findByUsername(params.username)
		if (user && user.password == params.password){
			session.user = user
			if (params.cName)
				redirect controller:params.cName, action:params.aName
			else
//				redirect controller:'tekEvent', action:'index'
				redirect(uri:'/')
		}
		else{
			flash.message = "Invalid username and password."
			render view:'login'
		}
	}
	
	def contact(){
		
	}
	
	def search = {
		if(params.query){
			def recruiters = Recruiter.search(params.query,[reload:true]).results
			[recruiters : recruiters]
		}
	}
	
}
