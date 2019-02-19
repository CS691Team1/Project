package com.erpdb.dao;

public interface logindao {
	
		boolean adminlogin(String adminname,String adminpassword);
		boolean changeadminpassword(String adminname,String adminnewpassword);
		boolean userlogin(String username,String userpassword);
		boolean changeuserpassword(String username,String usernewpassword);
}
