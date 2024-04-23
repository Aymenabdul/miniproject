package finalProject;

public class Getting {
private String firstName,secondName,emailId,phoneNumber,Address,dob,radio,selected;



public Getting() {
	super();
}

public Getting(String firstName, String secondName, String emailId, String phoneNumber, String address, String dob,
	 String selected,String radio) {
	super();
	this.firstName = firstName;
	this.secondName = secondName;
	this.emailId = emailId;
	this.phoneNumber = phoneNumber;
	this.Address = address;
	this.dob = dob;
	this.selected = selected;
	this.radio = radio;
	
}

public String getFirstName() {
	return firstName;
}

public void setFirstName(String firstName) {
	this.firstName = firstName;
}

public String getSecondName() {
	return secondName;
}

public void setSecondName(String secondName) {
	this.secondName = secondName;
}

public String getEmailId() {
	return emailId;
}

public void setEmailId(String emailId) {
	this.emailId = emailId;
}

public String getPhoneNumber() {
	return phoneNumber;
}

public void setPhoneNumber(String phoneNumber) {
	this.phoneNumber = phoneNumber;
}

public String getAddress() {
	return Address;
}

public void setAddress(String address) {
	Address = address;
}

public String getDob() {
	return dob;
}

public void setDob(String dob) {
	this.dob = dob;
}


public String getSelected() {
	return selected;
}

public void setSelected(String selected) {
	this.selected = selected;
}

public String getRadio() {
	return radio;
}

public void setRadio(String radio) {
	this.radio = radio;
}
}
