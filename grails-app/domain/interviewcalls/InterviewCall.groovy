package interviewcalls

class InterviewCall {
	
	String position
	String description
    Interviewer interviewer
	Candidate candidate
	Date date
	String status
	String observations
	
	static searchable = {
		interviewer component: true
		candidate component: true
		
	}
	
	String toString(){
		return " Position: "+position+" - Interviewer: "+interviewer+" - Candidate: "+candidate+" - Date: "+date
	}
	    static constraints = {
			 position     size: 1..30, blank: false, unique: false
			 description  size: 1..30, blank: true, unique: false, nullable: true
			 candidate    size: 1..30, blank: false, unique: false
			 interviewer  size: 1..30, blank: false, unique: false
			 date         blank: false, min : new Date()
			 status       blank: false, unique: false, inList: ["Done", "Pending", "Waiting for interviewer", "In progress"]
			 observations size: 1..30, blank: true, unique: false, nullable:true
		
		}
}
