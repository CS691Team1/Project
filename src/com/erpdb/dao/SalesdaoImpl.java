package com.erpdb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.Month;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Locale;

import com.erp.pojo.Inventoryitem;
import com.erp.pojo.SalesReport;
import com.erp.utility.DBUtility;

public class SalesdaoImpl implements Salesdao {
	Connection con=null;
	String sql;

	@Override
	public boolean addSalesReport(SalesReport report) {
		con=DBUtility.getConnection();
		sql="insert into Sales(datee,item,quantity)values(?,?,?);";
		
		
		
		PreparedStatement ptmt;
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setDate(1, (java.sql.Date)report.getDate());
			ptmt.setString(2, report.getItem());
			ptmt.setInt(3, report.getQuantity());
			int i=ptmt.executeUpdate();
			System.out.println(" "+i);
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
	public List<SalesReport> getAllItem() throws ParseException {
		List<SalesReport> lc=new ArrayList<SalesReport>();
		ResultSet rs;
		try{
			con=DBUtility.getConnection();

			sql="select * from sales";
			PreparedStatement ptmt;
			ptmt = con.prepareStatement(sql);
			rs=ptmt.executeQuery();
			while(rs.next())
			{				SalesReport c=new SalesReport();

				c.setDate(rs.getDate("datee"));
				c.setItem(rs.getString("item"));
				c.setQuantity(rs.getInt("quantity"));
				lc.add(c);
				System.out.println("jingalala"+c);
			}
		}catch (SQLException e) {
			
			e.printStackTrace();
		}
		return lc;
	
	}

	@Override
	public List<SalesReport> getById(String dattee) {
		List<SalesReport> lc=new ArrayList<SalesReport>();
		

		java.sql.Date sqlDate = java.sql.Date.valueOf( dattee );
		con=DBUtility.getConnection();
		sql="select * from sales where datee=? ";
		ResultSet rs;
		try{

	
	PreparedStatement ptmt;
	ptmt = con.prepareStatement(sql);
	ptmt.setDate(1,  sqlDate);
	rs=ptmt.executeQuery();
	while(rs.next())
		
	{// TODO Auto-generated method stub
		SalesReport it=new SalesReport();
		it.setDate(rs.getDate("datee"));
		it.setItem(rs.getString("item"));
		it.setQuantity(rs.getInt("quantity"));
		lc.add(it);

	}
		
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return lc;
	}

	
	public List<SalesReport> getByMonth(String dattee) throws ParseException {
		int monthe=0;
		System.out.println("andar gus gaya");
List<SalesReport> lc=new ArrayList<SalesReport>();
		

DateFormat format = new SimpleDateFormat("yyyy-MM");
Date datee = format.parse(dattee);
Calendar cal = Calendar.getInstance(); 
cal.setTime(datee);

monthe = cal.get(Calendar.MONTH) + 1;
System.out.println("ye month chal raha hai"+monthe);
System.out.println(datee);
		con=DBUtility.getConnection();
		sql="select * from sales where MONTH(datee)=? ";
		ResultSet rs;
		try{

	
	PreparedStatement ptmt;
	ptmt = con.prepareStatement(sql);
	ptmt.setInt(1,  monthe);
	rs=ptmt.executeQuery();
	while(rs.next())
		
	{// TODO Auto-generated method stub
		SalesReport it=new SalesReport();
		it.setDate(rs.getDate("datee"));
		it.setItem(rs.getString("item"));
		it.setQuantity(rs.getInt("quantity"));
		lc.add(it);
		System.out.println("salesitemlist"+it);

		System.out.println("jingalala"+lc);
	}
		
		
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
		return lc;
	}
}
