package com.erp.pojo;

import java.util.Date;

public class Employee {


	@Override
	public String toString() {
		return "Employee [Eeid=" + Eeid + ", efname=" + efname + ", elname=" + elname + ", Dob=" + Dob
				+ ", eDepartment=" + eDepartment + ", eJobPositon=" + eJobPositon + ", eJobTitle=" + eJobTitle
				+ ", eReportingOfficer=" + eReportingOfficer + ", eWorkingHours=" + eWorkingHours + ", ecustaddress="
				+ ecustaddress + ", ecustcontact=" + ecustcontact + ", eemail=" + eemail + "]";
	}
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
	public String geteJobTitle() {
		return eJobTitle;
	}
	public void seteJobTitle(String eJobTitle) {
		this.eJobTitle = eJobTitle;
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
	private String efname;
	private String elname;
	private String Dob;
	private String eDepartment;
	private String eJobPositon;
	private String eJobTitle;
	private String eReportingOfficer;
	private Integer eWorkingHours;
	private String ecustaddress;
	private long ecustcontact;
	private String eemail;
}
