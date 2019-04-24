package com.erpdb.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.erp.pojo.SalesReport;
import com.erp.utility.DBUtility;

public class SalesdaoImpl implements Salesdao {
	Connection con=null;
	String sql;

	@Override
	public boolean addSalesReport(SalesReport report) {
		con=DBUtility.getConnection();
		sql="insert into Customer(date,item,quantity,totalitemsale"
				+ ",state,country,apartment)values(?,?,?,?);";
		
		
		
		PreparedStatement ptmt;
		try {
			ptmt = con.prepareStatement(sql);
			ptmt.setDate(1, (java.sql.Date)report.getDate());
			ptmt.setString(2, report.getItem());
			ptmt.setInt(3, report.getQuantity());
			ptmt.setInt(4, report.getTotalItemSale());
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

}
