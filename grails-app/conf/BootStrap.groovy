import interviewcalls.InterviewCall
import interviewcalls.Candidate
import interviewcalls.Interviewer
import interviewcalls.Recruiter

class BootStrap {

	def init = { servletContext ->
		//define a candidate
		def candidate1 = new Candidate(
				name: 'Ramiro Herrera',
				phone: '3121448425',
				mail: 'ramiroherreraruiz@gmail.com',
				address: 'Guadalajara Jalisco',
				skills: 'Java, Spring',
				area: 'Developer').save()
		if(!candidate1.save()){
			candidate1.errors.allErrors.each{error -> println "An error occured with event1: ${error}" }
		}

		def interviewer1 = new Interviewer(
				name: 'Javier Mercado',
				phone: '3121448426',
				mail: 'navarro@gmail.com',
				address: 'Guadalajara Jalisco',
				availability:'monday to friday at 6pm',
				area: 'Developer').save()
		if(!interviewer1.save()){
			interviewer1.errors.allErrors.each{error -> println "An error occured with event1: ${error}" }
		}

		def call1 = new InterviewCall(
				position: 'Java Developer',
				description: 'Spring framework and Java',
				interviewer: Interviewer.findByName('Javier Mercado'),
				candidate: Candidate.findByName('Ramiro Herrera'),
				date: new Date('20/04/2016'),
				status: 'Pending',
				observations:'everything ok').save()
				
		if(!call1.save()){
			call1.errors.allErrors.each{error -> println "An error occured with event1: ${error}" }
		}
		
       

				def recruiter1 = new Recruiter(
					name:'Marcela Navarro',
					phone:'123412323',
					mail:'marcela@gmail.com',
					address:'calle falsa 123',
					username:'admin',
					password:'admin'
						).save()
		
				if(!recruiter1.save()){
					recruiter1.errors.allErrors.each{error -> println "An error occured with event1: ${error}" }
				}


	}



	def destroy = {
	}
}
