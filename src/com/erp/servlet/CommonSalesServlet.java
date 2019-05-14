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

import com.erp.pojo.Inventoryitem;
import com.erp.pojo.SalesReport;
import com.erpdb.dao.Inventorydaoimple;
import com.erpdb.dao.SalesdaoImpl;

/**
 * Servlet implementation class CommonSalesServlet
 */
@WebServlet("/CommonSalesServlet")
public class CommonSalesServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommonSalesServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action=request.getParameter("action");

		HttpSession session=request.getSession();
		String admin=(String) session.getAttribute("admin");
		String employee=(String)session.getAttribute("employee");
		System.out.println("admin has logged in"+admin);
		Inventorydaoimple inl=new Inventorydaoimple();
		SalesdaoImpl idl =new SalesdaoImpl();
		List<Inventoryitem> productlist;
		if(employee!=null) {
			Inventorydaoimple idi = new Inventorydaoimple();
			System.out.println("inside sales module");
			
				List<Inventoryitem> itemlist;
				try {
					itemlist = idi.getAllItem();
					if(itemlist!=null)
					{
						System.out.println(itemlist);
						session.setAttribute("itemlist",itemlist);
						response.sendRedirect("Sales.jsp");
					}
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}
		if(admin!=null) {
		System.out.println("employee tero toh lkklklklklkl");
			try {
				List<SalesReport> itemlist;

				itemlist = idl.getAllItem();
				productlist=inl.getAllItem();
				System.out.println("zinda"+itemlist);
				if(itemlist!=null)
				{
					System.out.println("fuck u"+itemlist);
					session.setAttribute("product", productlist);
					session.setAttribute("itemlist",itemlist);
					request.setAttribute("product",productlist);
					System.out.println(productlist);
					
					response.sendRedirect("SalesReport.jsp");
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		
		
		
	/*	List<SalesReport> itemlist;
		try {
			itemlist = idl.getAllItem();
			productlist=inl.getAllItem();
			System.out.println("zinda"+itemlist);
			if(itemlist!=null)
			{
				System.out.println("fuck u"+itemlist);
				session.setAttribute("product", productlist);
				session.setAttribute("itemlist",itemlist);
				request.setAttribute("product",productlist);
				System.out.println(productlist);
				
				response.sendRedirect("SalesReport.jsp");
			}
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}*/
		
		
			
			
			}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		SalesReport s=new SalesReport();
		SalesdaoImpl idl=new SalesdaoImpl();
		HttpSession session=request.getSession();

		// TODO Auto-generated method stub
		Inventorydaoimple inl = new Inventorydaoimple();
		System.out.println("inside sales module");
		
		
		boolean b = false;
		String action=request.getParameter("action");
		if(action!=null && action.equalsIgnoreCase("addsales"))
		{
			List<Inventoryitem> itemlist=null;

			try {

				itemlist=inl.getAllItem();
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			System.out.println("welcome to adding sales4");
			System.out.println("something"+request.getParameter("itemquantity1"));
			for(int d=0;d<itemlist.size();d++) {
			
			//String size = request.getParameter("insert");
			//System.out.println("size of list is"+size);
			String itemname= request.getParameter("itemname"+d);
			int itemquantity=Integer.parseInt(request.getParameter("itemquantity"+d));
			
			
			SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd"); // New Pattern
	        java.util.Date date = new java.util.Date(); // Returns a Date format object with the pattern
	        java.sql.Date sqlStartDate = new java.sql.Date(date.getTime());
			
		    s.setDate(sqlStartDate);
			s.setItem(itemname);
			s.setQuantity(itemquantity);
			
			
			b=idl.addSalesReport(s);
			}
			if(b==true)
			{
				System.out.println("employee added successfully");
				response.sendRedirect("Dashboard.jsp");
				
			}
			else
			{
				System.out.println("employee added failure");

				request.setAttribute("AddCustomerfailure","customer was not added");
				RequestDispatcher rd= request.getRequestDispatcher("/Login.jsp");
				rd.forward(request, response);
			}
			
		}
		else if(action!=null && action.equalsIgnoreCase("getbydate")) {
			
			System.out.println("bagh value aali ka"+request.getParameter("somedate")+"value parat bagh");
			
			List<Inventoryitem> productlist;
			
			
			List<SalesReport> itemlist=null;
			
			try {
				
				SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM-dd");
				// New Pattern
	 		if(request.getParameter("somedate")!="") {
				itemlist = idl.getById(request.getParameter("somedate"));
				System.out.println("mahina kaunsa chal raha hai"+request.getParameter("somemonth"));
				productlist=inl.getAllItem();
				System.out.println("zinda"+itemlist);
				if(itemlist!=null && !itemlist.isEmpty())
				{
					System.out.println("fuck u"+itemlist);
					session.setAttribute("product", productlist);
					session.setAttribute("itemlist",itemlist);
					request.setAttribute("product",productlist);
					System.out.println(productlist);
					
					request.setAttribute("getbyd", "chakde");
					RequestDispatcher rd = request.getRequestDispatcher("/SalesReport.jsp");
					rd.forward(request, response);				}
				else {
					System.out.println("empty itemlist");
					request.setAttribute("day", "The date you selected has no sales report");
					RequestDispatcher rd = request.getRequestDispatcher("/SalesReport.jsp");
					rd.forward(request, response);
				}
	 			}
	 			else {
	 				System.out.println("empty itemlist");
					request.setAttribute("day", "The date you selected has no sales report");
					RequestDispatcher rd = request.getRequestDispatcher("/SalesReport.jsp");
					rd.forward(request, response);
	 			}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}
		else if(action!=null && action.equalsIgnoreCase("getbymonth")) {
			System.out.println("apna time aayega");
			System.out.println("bagh value aali ka"+request.getParameter("somedate"));
			
			List<Inventoryitem> productlist;
			
			
			List<SalesReport> itemlist=null;
			
			try {
				if(request.getParameter("somemonth")!="") {
				SimpleDateFormat sdf1 = new SimpleDateFormat("yyyy-MM"); // New Pattern
	 			
				itemlist = idl.getByMonth(request.getParameter("somemonth"));
				System.out.println("mahina kaunsa chal raha hai"+request.getParameter("somemonth"));
				productlist=inl.getAllItem();
				System.out.println("zinda"+itemlist);
				if(itemlist!=null && !itemlist.isEmpty())
				{
					System.out.println("fuck u"+itemlist);
					session.setAttribute("product", productlist);
					session.setAttribute("itemlist",itemlist);
					System.out.println(productlist);
					request.setAttribute("somevalue", "chakde");
					RequestDispatcher rd = request.getRequestDispatcher("/SalesReport.jsp");
					rd.forward(request, response);
				
				}
				else {
					System.out.println("empty itemlist");
					request.setAttribute("month", "The date you selected has no sales report");
					RequestDispatcher rd = request.getRequestDispatcher("/SalesReport.jsp");
					rd.forward(request, response);
				}
				}
				else {
					System.out.println("empty itemlist");
					request.setAttribute("month", "The date you selected has no sales report");
					RequestDispatcher rd = request.getRequestDispatcher("/SalesReport.jsp");
					rd.forward(request, response);
				}
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		else {
			System.out.println("something went wrong");

			// TODO Auto-generated method stub
			System.out.println("inside sales module");
			

			
			}}
}
