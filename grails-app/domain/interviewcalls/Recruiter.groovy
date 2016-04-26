package interviewcalls

class Recruiter {
	String name
	String phone
	String mail
	String address
	String username
	String password
	static searchable = true
	
//	static hasMany = [phone:String, email:String, skills : String, area : String]
	
	String toString(){
		return name
	}
    
	static constraints = {
		name size: 1..30, blank: false, unique: true
		phone size: 1..30, blank: false, unique: true
		mail email: true, size: 1..30, blank: false, unique: true, nullable:true
		address size: 1..30, blank: true, unique: false, nullable:true
		username size: 1..30, blank: false, unique: true
		password password:true, size: 1..30, blank: false, unique: false
    }
}
