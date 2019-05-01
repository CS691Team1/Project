package com.erp.pojo;

import java.util.Date;

public class Employee {


	
	public String getEeid() {
		return Eeid;
	}
	public void setEeid(String eeid) {
		Eeid = eeid;
	}
	public String getEfname() {
		return efname;
	}
	public void setEfname(String efname) {
		this.efname = efname;
	}
	public String getElname() {
		return elname;
	}
	public void setElname(String elname) {
		this.elname = elname;
	}
	public String getDob() {
		return Dob;
	}
	public void setDob(String dob) {
		Dob = dob;
	}
	public String geteDepartment() {
		return eDepartment;
	}
	public void seteDepartment(String eDepartment) {
		this.eDepartment = eDepartment;
	}
	public String geteJobPositon() {
		return eJobPositon;
	}
	public void seteJobPositon(String eJobPositon) {
		this.eJobPositon = eJobPositon;
	}

	public String geteReportingOfficer() {
		return eReportingOfficer;
	}
	public void seteReportingOfficer(String eReportingOfficer) {
		this.eReportingOfficer = eReportingOfficer;
	}
	public Integer geteWorkingHours() {
		return eWorkingHours;
	}
	public void seteWorkingHours(Integer eWorkingHours) {
		this.eWorkingHours = eWorkingHours;
	}
	public String getEcustaddress() {
		return ecustaddress;
	}
	public void setEcustaddress(String ecustaddress) {
		this.ecustaddress = ecustaddress;
	}
	public long getEcustcontact() {
		return ecustcontact;
	}
	public void setEcustcontact(long ecustcontact) {
		this.ecustcontact = ecustcontact;
	}
	public String getEemail() {
		return eemail;
	}
	public void setEemail(String eemail) {
		this.eemail = eemail;
	}
	private String Eeid;
	@Override
	public String toString() {
		return "Employee [Eeid=" + Eeid + ", efname=" + efname + ", elname=" + elname + ", Dob=" + Dob
				+ ", eDepartment=" + eDepartment + ", eJobPositon=" + eJobPositon + ", eJobTitle=" + 
				" eReportingOfficer=" + eReportingOfficer + ", eWorkingHours=" + eWorkingHours + ", ecustaddress="
				+ ecustaddress + ", ecustcontact=" + ecustcontact + ", eemail=" + eemail + ", username=" + username
				+ ", password=" + password + "]";
	}
	private String efname;
	private String elname;
	private String Dob;
	private String eDepartment;
	private String eJobPositon;
	private String eReportingOfficer;
	private Integer eWorkingHours;
	private String ecustaddress;
	private long ecustcontact;
	private String eemail;
	private String username;
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	private String password;
}
