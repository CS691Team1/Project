package com.erp.servlet;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.mysql.*;
import com.erpdb.dao.logindaoimpl;
/**
 * Servlet implementation class CommonLoginServlet
 */
@WebServlet("/CommonLoginServlet")
public class CommonLoginServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommonLoginServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		logindaoimpl ldimpl=new logindaoimpl();

HttpSession session=request.getSession();
String action=request.getParameter("action");
String role=request.getParameter("type");
String password=request.getParameter("password");
String username=request.getParameter("name");
String adminpassword=request.getParameter("password");
String adminusername=request.getParameter("name");

Cookie c=new Cookie("Username",username);
response.addCookie(c);
if(action!=null&&action.equalsIgnoreCase("login"))
{
if(role.equalsIgnoreCase("customer"))
{
	boolean b=ldimpl.userlogin(username, password);
			if(b==true)
			{
				session.setAttribute("customer",username);
				session.setAttribute("type",role);
				
				request.setAttribute("customerlogin","you have successfully logged in");	
				RequestDispatcher rd=request.getRequestDispatcher("Dashboard.jsp");
				rd.forward(request, response);
			}
			else
			{
				request.setAttribute("customerlogin","Plz enter valid user credentials");
				RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
			}
}
else if(role.equalsIgnoreCase("admin"))
{
	boolean b=ldimpl.adminlogin(adminusername, adminpassword);
	
			if(b==true)
			{
				session.setAttribute("admin",adminusername);
				session.setAttribute("type",role);
				
				request.setAttribute("adminlogin",username+" welcome to dashboard");	
				RequestDispatcher rd=request.getRequestDispatcher("Dashboard.jsp");
				rd.forward(request, response);
				
			}
			else
			{
				request.setAttribute("adminlogin","Plz enter valid user credentials");
				RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
				rd.forward(request, response);
			}
}
}

	}

}
