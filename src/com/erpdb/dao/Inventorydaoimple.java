package com.erpdb.dao;

import java.sql.Connection;
import java.util.Date;  
import java.text.SimpleDateFormat;  

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import com.erp.pojo.Employee;
import com.erp.pojo.Inventoryitem;
import com.erp.utility.DBUtility;

public class Inventorydaoimple implements Inventorydao {
	Connection con=null;
	String sql;
	@Override
	public boolean additem(Inventoryitem item) {
		
						con=DBUtility.getConnection();
				sql="insert into inventory(itemid,itemname,itemquantity,itemminquantity,itemshipment,itemperdayuse,purchaseprice,saleprice)values(?,?,?,?,?,?,?,?);";
				PreparedStatement ptmt;
				try {
					ptmt = con.prepareStatement(sql);
					
					ptmt.setInt(1,item.getItemid());
					ptmt.setString(2, item.getItemname());
					ptmt.setInt(3, item.getItemquantity());
					ptmt.setInt(4, item.getMinitemquantity());
					ptmt.setDate(5,(java.sql.Date) item.getItemshipment());
					ptmt.setInt(6, item.getPerdaysale());
					ptmt.setInt(7, item.getPurchaseprice());
					ptmt.setInt(8, item.getSaleprice());
					
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
	public boolean updateitem(Inventoryitem item) {
		try {
			con=DBUtility.getConnection();
			sql="update inventory set itemname=?,itemquantity=?,itemminquantity=?,itemshipment=?,itemperdayuse=?,purchaseprice=?,saleprice=? where itemid=? ";
			PreparedStatement ptmt=con.prepareStatement(sql);
			ptmt.setString(1, item.getItemname());
			ptmt.setInt(2, item.getItemquantity());
			ptmt.setInt(3, item.getMinitemquantity());
			ptmt.setDate(4,(java.sql.Date) item.getItemshipment());
			ptmt.setInt(5, item.getPerdaysale());
			ptmt.setInt(6, item.getPurchaseprice());
			ptmt.setInt(7, item.getSaleprice());
			ptmt.setInt(8,item.getItemid());

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
	public boolean deleteitem(int itemid) {
		try {
			con=DBUtility.getConnection();
			sql="delete from inventory where itemid=? ";
			PreparedStatement ptmt;
			
				ptmt = con.prepareStatement(sql);
				ptmt.setInt(1,itemid);
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
	public Inventoryitem getById(int itemid) {
		Inventoryitem it=new Inventoryitem();
		ResultSet rs;
		try{
	con=DBUtility.getConnection();
	sql="select * from inventory where itemid=? ";
	PreparedStatement ptmt;
	ptmt = con.prepareStatement(sql);
	ptmt.setInt(1,itemid);
	rs=ptmt.executeQuery();
	while(rs.next())
	{// TODO Auto-generated method stub
		it.setItemid(rs.getInt("itemid"));;
		it.setItemname(rs.getString("itemname"));
		it.setItemquantity(rs.getInt("itemquantity"));
		it.setItemshipment(rs.getDate("itemshipment"));
		it.setMinitemquantity(rs.getInt("itemminquantity"));
		it.setPerdaysale(rs.getInt("itemperdayuse"));
		it.setPurchaseprice(rs.getInt("purchaseprice"));
		it.setSaleprice(rs.getInt("saleprice"));
	return it;
	}
	
	
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return null;
	}

	@Override
	public List<Inventoryitem> getAllItem() throws ParseException {
		List<Inventoryitem> lc=new ArrayList<Inventoryitem>();
		ResultSet rs;
		try{
			con=DBUtility.getConnection();
			sql="select * from inventory";
			PreparedStatement ptmt;
			ptmt = con.prepareStatement(sql);
			rs=ptmt.executeQuery();
			while(rs.next())
			{				
			Inventoryitem c=new Inventoryitem();
				c.setItemid(Integer.parseInt((rs.getString("itemid"))));
				c.setItemname(rs.getString("itemname"));
				c.setItemquantity(Integer.parseInt((rs.getString("itemquantity"))));
				c.setMinitemquantity(Integer.parseInt((rs.getString("itemminquantity"))));
				Date date1=rs.getDate("itemshipment");
				c.setItemshipment(date1);
				c.setPerdaysale(Integer.parseInt(rs.getString("itemperdayuse")));
				c.setPurchaseprice(Integer.parseInt(rs.getString("purchaseprice")));
				c.setSaleprice(Integer.parseInt(rs.getString("saleprice")));
				lc.add(c);
			}
		}catch (SQLException e) {
			
			e.printStackTrace();
		}
		return lc;
	
	}

}
