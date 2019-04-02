package com.erp.pojo;


public class Customer {

	
	private String custfname;
	private String custlname;
	private String custusername;
	private String password;
	private String custstreet;
	private String custapt;
	private String custcity;
	private String custzipcode;
	private long custcontact;
	private String email;
	private String custcountry;
	private String state;
	
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
	public String getCuststreet() {
		return custstreet;
	}
	public void setCuststreet(String custstreet) {
		this.custstreet = custstreet;
	}
	public String getCustapt() {
		return custapt;
	}
	public void setCustapt(String custapt) {
		this.custapt = custapt;
	}
	public String getCustcity() {
		return custcity;
	}
	public void setCustcity(String custcity) {
		this.custcity = custcity;
	}
	public String getCustzipcode() {
		return custzipcode;
	}
	public void setCustzipcode(String custzipcode) {
		this.custzipcode = custzipcode;
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
	public String getCustcountry() {
		return custcountry;
	}
	public void setCustcountry(String custcountry) {
		this.custcountry = custcountry;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	@Override
	public String toString() {
		return "Customer [custfname=" + custfname + ", custlname=" + custlname + ", custusername=" + custusername
				+ ", password=" + password + ", custstreet=" + custstreet + ", custapt=" + custapt + ", custcity="
				+ custcity + ", custzipcode=" + custzipcode + ", custcontact=" + custcontact + ", email=" + email
				+ ", custcountry=" + custcountry + ", state=" + state + "]";
	}
	
}
