package com.erp.servlet;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.sql.Date;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.erp.pojo.Employee;
import com.erp.pojo.Inventoryitem;
import com.erpdb.dao.Inventorydaoimple;
import com.erpdb.dao.employeedaoimpl;

/**
 * Servlet implementation class CommonInventoryservlet
 */
@WebServlet("/CommonInventoryservlet")
public class CommonInventoryservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommonInventoryservlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("do get method entered");
		HttpSession session=request.getSession();
		Inventorydaoimple idi = new Inventorydaoimple();
		String action=request.getParameter("action");
		// TODO Auto-generated method stub
		
			
	if(action!=null&&action.equalsIgnoreCase("update"))
	{
		int id=Integer.parseInt(request.getParameter("itemid"));
		Inventoryitem its=idi.getById(id);

		if(its!=null)
		{
			System.out.println("update value returned");
			session.setAttribute("item",its);
			System.out.println("checking");
			response.sendRedirect("Updateitem.jsp");			

		}
		else
		{
			request.setAttribute("editcustomerfailure","false");
			RequestDispatcher rd= request.getRequestDispatcher("InventoryModule.jsp");
			rd.forward(request, response);
		}
	}
	else if(action!=null&&action.equalsIgnoreCase("delete"))
	{
		int id=Integer.parseInt(request.getParameter("itemid"));
		Boolean b=idi.deleteitem(id);
		if(b==true)
		{
			System.out.println("deleted");
			response.sendRedirect("CommonInventoryservlet");
		}
		else
		{
			request.setAttribute("deletecustomerfailure","false");
			RequestDispatcher rd= request.getRequestDispatcher("InventoryModule.jsp");
			rd.forward(request, response);
		}
	}
	else {
		System.out.println("inside heck employee");
		{
			List<Inventoryitem> itemlist;
			try {
				itemlist = idi.getAllItem();
				if(itemlist!=null)
				{
					session.setAttribute("itemlist",itemlist);
					response.sendRedirect("InventoryModule.jsp");
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			}
	}
	}

	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("welcome to servlet");
		HttpSession session=request.getSession();

		// TODO Auto-generated method stub
		Inventoryitem i=new Inventoryitem();
		Inventorydaoimple idi=new Inventorydaoimple();
		String action=request.getParameter("action");
		if(action!=null && action.equalsIgnoreCase("Additem"))
		{
			try {
			System.out.println("welcome to adding");
			Integer itemid=Integer.parseInt(request.getParameter("itemid"));
			String itemname=request.getParameter("itemname");
			int itemquantity=Integer.parseInt(request.getParameter("itemquantity"));
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd"); // New Pattern
	        java.util.Date date = sdf1.parse(request.getParameter("itemshipment")); // Returns a Date format object with the pattern
	        java.sql.Date sqlStartDate = new java.sql.Date(date.getTime());
			
		    Integer itemminquantity=Integer.parseInt(request.getParameter("itemminquantity"));
			Integer perdayuse=Integer.parseInt(request.getParameter("itemsperday"));
			Integer purchaseprice=Integer.parseInt(request.getParameter("itemspurchaseprice"));
			Integer saleprice=Integer.parseInt(request.getParameter("itemssaleprice"));
			
			i.setItemid(itemid);
			i.setItemname(itemname);
			i.setItemquantity(itemquantity);
			i.setItemshipment(sqlStartDate);
			i.setMinitemquantity(itemminquantity);
			i.setPerdaysale(perdayuse);
			i.setPurchaseprice(purchaseprice);
			i.setSaleprice(saleprice);
			
			boolean b=idi.additem(i);
			if(b==true)
			{
				System.out.println("employee added successfully");
				response.sendRedirect("CommonInventoryservlet");
				
			}
			else
			{
				System.out.println("employee added failure");

				request.setAttribute("AddCustomerfailure","customer was not added");
				RequestDispatcher rd= request.getRequestDispatcher("/Login.jsp");
				rd.forward(request, response);
			}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else if(action!=null && action.equalsIgnoreCase("Updateitem"))
		{
			
			try {
				System.out.println("welcome to updating");
				Integer itemid=Integer.parseInt(request.getParameter("itemid"));
				String itemname=request.getParameter("itemname");
				int itemquantity=Integer.parseInt(request.getParameter("itemquantity"));
				SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd"); // New Pattern
		        java.util.Date date = sdf1.parse(request.getParameter("itemshipment")); // Returns a Date format object with the pattern
		        java.sql.Date sqlStartDate = new java.sql.Date(date.getTime());
				
			    Integer itemminquantity=Integer.parseInt(request.getParameter("itemminquantity"));
				Integer perdayuse=Integer.parseInt(request.getParameter("itemsperday"));
				Integer purchaseprice=Integer.parseInt(request.getParameter("itemspurchaseprice"));
				Integer saleprice=Integer.parseInt(request.getParameter("itemssaleprice"));
				i.setItemid(itemid);
				i.setItemname(itemname);
				i.setItemquantity(itemquantity);
				i.setItemshipment(sqlStartDate);
				i.setMinitemquantity(itemminquantity);
				i.setPerdaysale(perdayuse);
				i.setPurchaseprice(purchaseprice);
				i.setSaleprice(saleprice);
			boolean b=idi.updateitem(i);
			if(b==true)
			{
				List<Inventoryitem> itemlist=idi.getAllItem();
				if(itemlist!=null)
				{
					session.setAttribute("itemlist",itemlist);
					System.out.println("item updated");
					response.sendRedirect("CommonInventoryservlet");
				}
				
			}
		
			else
			{
				request.setAttribute("Updateitem","false");
				RequestDispatcher rd= request.getRequestDispatcher("/Updateitem.jsp");
				rd.forward(request, response);
			}
			}
			catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

}
