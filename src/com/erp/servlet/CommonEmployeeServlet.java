package com.erp.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.erp.pojo.Customer;
import com.erp.pojo.Employee;
import com.erpdb.dao.customerdaoimpl;
import com.erpdb.dao.employeedaoimpl;

/**
 * Servlet implementation class CommonEmployeeServlet
 */
@WebServlet("/CommonEmployeeServlet")
public class CommonEmployeeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CommonEmployeeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("do get method entered");
		HttpSession session=request.getSession();
		employeedaoimpl edi = new employeedaoimpl();
		String action=request.getParameter("action");
		// TODO Auto-generated method stub
		if(action!=null && action.equalsIgnoreCase("ViewEmployee"))
		{
		System.out.println("inside view employee");
		
		
	}
		else {
			System.out.println("inside heck employee");
			List<Employee> elist=edi.getAllEmployeer();
			if(elist!=null)
			{
				request.setAttribute("elist",elist);
				response.sendRedirect("Listemployee.jsp");
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
		Employee e=new Employee();
		employeedaoimpl edi=new employeedaoimpl();
		String action=request.getParameter("action");
		if(action!=null && action.equalsIgnoreCase("AddEmployee"))
		{
			System.out.println("welcome to adding");
			String eid=request.getParameter("EmployeeID");
			String efname=request.getParameter("Efname");
			String elname=request.getParameter("Elname");
			String edob=request.getParameter("Edob");
			String edepartment=request.getParameter("Edepartment");
			String ejobposition=request.getParameter("EJobPosition");
			String ejobtitle=request.getParameter("EJobTitle");
			String ereportingofficer=request.getParameter("EReportingOfficer");
			Integer eWorkingHours=Integer.parseInt(request.getParameter("EWorkingHours"));
			String eaddress=request.getParameter("EmployeeAddress");
			long econtact=Integer.parseInt(request.getParameter("Employeecontact"));
			String email=request.getParameter("Employeeemail");
			e.setEeid(eid);
			e.setEfname(efname);
			e.setElname(elname);
			e.setDob(edob);
			e.seteDepartment(edepartment);
			e.seteJobPositon(ejobposition);
			e.seteJobTitle(ejobtitle);
			e.seteReportingOfficer(ereportingofficer);
			e.seteWorkingHours(eWorkingHours);
			e.setEcustaddress(eaddress);
			e.setEcustcontact(econtact);
			e.setEemail(email);
			
						
			boolean b=edi.addEmployee(e);
			if(b==true)
			{
				System.out.println("employee added successfully");
				request.setAttribute("AddCustomersuccess","customer added successfully");
				RequestDispatcher rd= request.getRequestDispatcher("/Listemployee.jsp");
				rd.forward(request, response);
			}
			else
			{
				System.out.println("employee added failure");

				request.setAttribute("AddCustomerfailure","customer was not added");
				RequestDispatcher rd= request.getRequestDispatcher("/Login.jsp");
				rd.forward(request, response);
			}
		}
		
	}

}
