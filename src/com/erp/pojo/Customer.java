package com.erp.pojo;

import java.util.Date;

public class Customer {

	public int getCustid() {
		return custid;
	}
	public void setCustid(int custid) {
		this.custid = custid;
	}
	public String getCustfname() {
		return custfname;
	}
	public void setCustfname(String custfname) {
		this.custfname = custfname;
	}
	public String getCustlname() {
		return custlname;
	}
	public void setCustlname(String custlname) {
		this.custlname = custlname;
	}
	public String getCustusername() {
		return custusername;
	}
	public void setCustusername(String custusername) {
		this.custusername = custusername;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getCustaddress() {
		return custaddress;
	}
	public void setCustaddress(String custaddress) {
		this.custaddress = custaddress;
	}
	public long getCustcontact() {
		return custcontact;
	}
	public void setCustcontact(long custcontact) {
		this.custcontact = custcontact;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	private int custid;
	@Override
	public String toString() {
		return "Customer [custid=" + custid + ", custfname=" + custfname + ", custlname=" + custlname
				+ ", custusername=" + custusername + ", password=" + password + ", custaddress=" + custaddress
				+ ", custcontact=" + custcontact + ", email=" + email + "]";
	}
	private String custfname;
	private String custlname;
	private String custusername;
	private String password;
	private String custaddress;
	private long custcontact;
	private String email;
}
