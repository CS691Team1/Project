package com.erp.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class DBUtility {
	static Connection con=null;
	
	public static Connection getConnection() {
		String sql;
		ResultSet rs;
		Boolean b;
		String adminname="Bhushan";
		String adminpassword="neverask";
	
	try {
		Class.forName("com.mysql.jdbc.Driver");
	} catch (ClassNotFoundException e) {
		
		e.printStackTrace();
	}
	try {

		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/bhush","root","root");
		sql="select adminusername,adminpassword from Adminn where adminusername=? and adminpassword=?";
		try {
			PreparedStatement ptmt=con.prepareStatement(sql);
			ptmt.setString(1,adminname);
			ptmt.setString(2,adminpassword);
			rs=ptmt.executeQuery();
			while(rs.next())
			{
				if(adminname.equals(rs.getString("adminusername"))&&adminpassword.equals(rs.getString("adminpassword")))
						{
					System.out.println("valid");
						}
				else
				{
					System.out.println("invalidvalid");
				}
			}
			} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	} catch (SQLException e) {
		
		e.printStackTrace();
	}
	return con;
	
	}
	public static void main(String[]args) {

		DBUtility cd = new DBUtility();
	}
}
