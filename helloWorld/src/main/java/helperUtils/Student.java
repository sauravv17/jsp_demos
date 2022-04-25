package helperUtils;

public class Student {
	private String fName;
	private String lname;
	private boolean recieveAward;
	
	public Student(String fName, String lname, boolean recieveAward) {
		
		this.fName = fName;
		this.lname = lname;
		this.recieveAward = recieveAward;
	}



	public boolean isRecieveAward() {
		return recieveAward;
	}



	public void setRecieveAward(boolean recieveAward) {
		this.recieveAward = recieveAward;
	}
	
	
	public String getfName() {
		return fName;
	}
	public void setfName(String fName) {
		this.fName = fName;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	
	
	

}
