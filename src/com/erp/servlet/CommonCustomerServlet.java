package com.erp.servlet;

import java.io.IOException;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.erpdb.dao.customerdaoimpl;
import com.erp.pojo.Customer;

/**
 * Servlet implementation class CommonCustomerServlet
 */
@WebServlet("/CommonCustomerServlet")
public class CommonCustomerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommonCustomerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Customer c=new Customer();
		customerdaoimpl cdi=new customerdaoimpl();
		String action=request.getParameter("action");
		if(action!=null && action.equalsIgnoreCase("AddCustomer"))
		{
			
			String custfname=request.getParameter("CustomerfName");
			String custlname=request.getParameter("CustomerlName");
			String custusername=request.getParameter("CustomerUsername");
			String custaddress=request.getParameter("CustomerAddress");
			long custcontact=Long.parseLong(request.getParameter("CustomerContact"));
			String custpassword=request.getParameter("CustomerPassword");
			String custemail=request.getParameter("CustomerEmail");
			c.setCustfname(custfname);
			c.setCustlname(custlname);
			c.setCustusername(custusername);
			c.setPassword(custpassword);
			c.setCustaddress(custaddress);
			c.setCustcontact(custcontact);
			c.setEmail(custemail);
			
			boolean b=cdi.addCustomer(c);
			if(b==true)
			{
				request.setAttribute("AddCustomersuccess","customer added successfully");
				RequestDispatcher rd= request.getRequestDispatcher("/Login.jsp");
				rd.forward(request, response);
			}
			else
			{
				request.setAttribute("AddCustomerfailure","customer was not added");
				RequestDispatcher rd= request.getRequestDispatcher("/Login.jsp");
				rd.forward(request, response);
			}
		}
		
	}

}
