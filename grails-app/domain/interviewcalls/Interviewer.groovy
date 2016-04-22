package interviewcalls

class Interviewer {
 String name
 String mail
 String phone
 String address
 String availability
 String area
 
 static searchable = true
// static hasMany = [phone:String, email:String]
 
 String toString(){
	 return name
 }
 
    static belongsTo = InterviewCall
    static constraints = {
		name size: 1..30, blank: false, unique: true
		phone size: 1..30, blank: false, unique: true
		mail email: true, size: 1..30, blank: false, unique: true, nullable:true
		address size: 1..30, blank: true, unique: false
		area blank: true, unique: false, inList: ["Developer", "Tester", "DBA", "Support","BI","BPO"]
    }
}
