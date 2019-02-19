package com.erpdb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.erp.pojo.Employee;
import com.erp.utility.DBUtility;

public class employeedaoimpl implements employeedao{
	Connection con=null;
	String sql;
	@Override		
	public boolean addEmployee(Employee e) {
			con=DBUtility.getConnection();
			sql="insert into Employee(eid,efname,elname,Dob,eDepartment,eJobPosition,eJobTitle,eReportingOfficer,eWorkingHours,"
					+ "ecustaddress,ecustcontact,eemail)values(?,?,?,?,?,?,?,?,?,?,?,?);";
			PreparedStatement ptmt;
			try {
				ptmt = con.prepareStatement(sql);
				
				ptmt.setString(1,e.getEeid());
				ptmt.setString(2, e.getEfname());
				ptmt.setString(3, e.getElname());
				ptmt.setString(4, e.getDob());
				ptmt.setString(5, e.geteDepartment());
				ptmt.setString(6, e.geteJobPositon());
				ptmt.setString(7, e.geteJobTitle());
				ptmt.setString(8, e.geteReportingOfficer());
				ptmt.setLong(9, e.geteWorkingHours());
				ptmt.setString(10, e.getEcustaddress());
				ptmt.setLong(11, e.getEcustcontact());
				ptmt.setString(12, e.getEemail());
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
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
			
		return false;
	}

	@Override
	public boolean updateEmployee(Employee e) {
		try {
			con=DBUtility.getConnection();
			sql="update Employee set efname=?,ecustaddress=?,ecustcontact=? where eid=? ";
			PreparedStatement ptmt=con.prepareStatement(sql);
			ptmt.setString(1,e.getEfname());
			ptmt.setString(2, e.getEcustaddress());
			ptmt.setLong(3, e.getEcustcontact());
			ptmt.setString(4, e.getEeid());
			int i=ptmt.executeUpdate();
			if(i>0)
			{
				return true;
			}
			else
			{
				return false;
			}
			} catch (SQLException e1) {
				// TODO Auto-generated catch block
				e1.printStackTrace();
			}
		return false;
	}

	@Override
	public boolean deleteEmployee(int custid) {
		try {
			con=DBUtility.getConnection();
			sql="delete from Customer where custid=? ";
			PreparedStatement ptmt;
			
				ptmt = con.prepareStatement(sql);
				ptmt.setInt(1,custid);
			int i=ptmt.executeUpdate();
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

	@Override
	public Employee getById(int custid) {
		
			Employee c=new Employee();
			ResultSet rs;
			try{
		con=DBUtility.getConnection();
		sql="select * from Employee where eid=? ";
		PreparedStatement ptmt;
		ptmt = con.prepareStatement(sql);
		ptmt.setInt(1,custid);
		rs=ptmt.executeQuery();
		while(rs.next())
		{// TODO Auto-generated method stub
			c.setEeid(rs.getString("eid"));
			c.setEfname(rs.getString("efname"));
			c.setEcustaddress(rs.getString("ecustaddress"));
			c.setEcustcontact(rs.getLong("ecustcontact"));
			return c;
		}
		
		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
		}

	
	

	@Override
	public Employee getByemployeeusername(String custusername) {
		Employee c=new Employee();
		ResultSet rs;
		
	con=DBUtility.getConnection();
	sql="select * from Employee where efname=? ";
	PreparedStatement ptmt;
	try {
		ptmt = con.prepareStatement(sql);
	 
	
	ptmt.setString(1,custusername);
	rs=ptmt.executeQuery();
	while(rs.next())
	{
		c.setEeid(rs.getString("eid"));
		c.setEfname(rs.getString("efname"));
		c.setElname(rs.getString("elname"));
		c.setEcustaddress(rs.getString("ecustaddress"));
		c.setEcustcontact(rs.getLong("ecustcontact"));
		return c;
	}
	}catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		
		return null;
		
	}

	@Override
	public List<Employee> getAllEmployeer() {
		List<Employee> lc=new ArrayList<Employee>();
		ResultSet rs;
		try{
			con=DBUtility.getConnection();
			sql="select * from Employee";
			PreparedStatement ptmt;
			ptmt = con.prepareStatement(sql);
			rs=ptmt.executeQuery();
			while(rs.next())
			{				
			Employee c=new Employee();
				c.setEeid(rs.getString("eid"));
				c.setEfname(rs.getString("efname"));
				c.setEcustaddress(rs.getString("ecustaddress"));
				c.setEcustcontact(rs.getLong("ecustcontact"));
				lc.add(c);
			}
		}catch (SQLException e) {
			
			e.printStackTrace();
		}
		return lc;
	

	}
}
