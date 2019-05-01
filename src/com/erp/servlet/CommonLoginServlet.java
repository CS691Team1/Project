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
		HttpSession session=request.getSession();
		String action=request.getParameter("action");
		if(action!=null&&action.equalsIgnoreCase("logout"))
		{
			session.invalidate();
			response.sendRedirect("Login.jsp");
			
		}
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
String password=request.getParameter("Custpassword");
String username=request.getParameter("Custusername");
String adminpassword=request.getParameter("Custpassword");
String adminusername=request.getParameter("Custusername");
System.out.println("wtf is wrong with you"+role);
Cookie c=new Cookie("Username",username);
response.addCookie(c);

if(action!=null&&action.equalsIgnoreCase("login"))
{
	if(role.equalsIgnoreCase("admin")) {
	System.out.println(username+password);
	boolean b=ldimpl.adminlogin(username, password);
	System.out.println(b);
	
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
	else if(role.equalsIgnoreCase("employee")) {
		System.out.println(username+password);
		boolean b=ldimpl.userlogin(username, password);
		System.out.println(b);
		
				if(b==true)
				{
					session.setAttribute("employee",username);
					session.setAttribute("type",role);
					
					request.setAttribute("custlogin",username+" welcome to dashboard");	
					RequestDispatcher rd=request.getRequestDispatcher("Dashboard.jsp");
					rd.forward(request, response);
					
				}
				else
				{
					request.setAttribute("custlogin","Plz enter valid user credentials");
					RequestDispatcher rd=request.getRequestDispatcher("Login.jsp");
					rd.forward(request, response);
				}
	}
}

else {
	System.out.println("fuck you");
}
}

	}


