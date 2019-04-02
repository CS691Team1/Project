package com.erpdb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.erp.utility.DBUtility;
import com.erp.pojo.Customer;

public class customerdaoimpl implements customerdao {
	Connection con=null;
	String sql;
	
	@Override
	public boolean addCustomer(Customer cust) {
		con=DBUtility.getConnection();
		sql="insert into Customer(custfname,custlname,custusername,custpassword,city,custcontact,custemail,street,zipcode"
				+ ",state,country,apartment)values(?,?,?,?,?,?,?,?,?,?,?,?);";
		PreparedStatement ptmt;
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setString(1, cust.getCustfname());
			ptmt.setString(2, cust.getCustlname());
			ptmt.setString(3, cust.getCustusername());
			ptmt.setString(4, cust.getPassword());
			ptmt.setString(5, cust.getCustcity());
			ptmt.setLong(6, cust.getCustcontact());
			ptmt.setString(7, cust.getEmail());
			ptmt.setString(8, cust.getCuststreet());
			ptmt.setString(9, cust.getCustzipcode());
			ptmt.setString(10, cust.getState());
			ptmt.setString(11, cust.getCustcountry());
			ptmt.setString(12, cust.getCustapt());
			int i=ptmt.executeUpdate();
			System.out.println(i);
			if(i>0)
			{
				return true;
			}
			else
			{
				return false;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
	return false;
	}



}
