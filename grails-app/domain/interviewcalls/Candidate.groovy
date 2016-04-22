package interviewcalls

class Candidate {
	String name
    String phone
	String mail 
	String address
	String skills
	String area
	 
	static searchable = true
	
//	static hasMany = [phone:String, email:String, skills : String, area : String]
	
	String toString(){
		return name
	}
	
	
	static belongsTo = InterviewCall
	static constraints = {
	name size: 1..30, blank: false, unique: true
    phone size: 1..30, blank: false, unique: true
	mail email: true, size: 1..30, blank: false, unique: true, nullable:true
	address size: 1..30, unique: false, nullable:true
	skills size: 1..30, unique: false, nullable:true
	area blank: false, unique: false, inList: ["Developer", "Tester", "DBA"]
	
    }
}
