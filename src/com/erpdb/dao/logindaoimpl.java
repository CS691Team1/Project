package com.erpdb.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.mysql.*;
import com.erp.utility.DBUtility;;

public class logindaoimpl implements logindao {
	String sql;
	ResultSet rs;
	Boolean b;
	@Override
	public boolean adminlogin(String adminname, String adminpassword) {

		// TODO Auto-generated method stub
		Connection con=DBUtility.getConnection();
		sql="select custusername,custpassword from customer where custusername=? and custpassword=?";
		try {
			PreparedStatement ptmt=con.prepareStatement(sql);
			ptmt.setString(1,adminname);
			ptmt.setString(2,adminpassword);
			rs=ptmt.executeQuery();
			while(rs.next())
			{
				if(adminname.equals(rs.getString("custusername"))&&adminpassword.equals(rs.getString("custpassword")))
						{
					return true;
						}
				else
				{
					return false;
				}
			}
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	@Override
	public boolean changeadminpassword(String adminname, String adminnewpassword) {
		// TODO Auto-generated method stub
		return false;
	}

	@Override
	public boolean userlogin(String username, String userpassword) {
		System.out.println("entered");
		Connection con=DBUtility.getConnection();
		System.out.println(userpassword+username);
		sql="select username,password from employee where username=? and password=?";
		try {
			PreparedStatement ptmt=con.prepareStatement(sql);
			ptmt.setString(1,username);
			ptmt.setString(2,userpassword);
			System.out.println(ptmt);
			rs=ptmt.executeQuery();
			while(rs.next())
			{
				if(username.equals(rs.getString("username"))&&userpassword.equals(rs.getString("password")))
					System.out.println("test");	
					return true;
						
				
			}
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
		
	}

	@Override
	public boolean changeuserpassword(String username, String usernewpassword) {
		// TODO Auto-generated method stub
		return false;
	}

}
