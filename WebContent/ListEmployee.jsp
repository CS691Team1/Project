<%@ page language="java" import="java.util.List,com.erp.pojo.Employee" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>ERP</title>
</head>
<body style="background-color:#FDEBD0">
  <nav class="navbar navbar-dark navbar-expand-sm sticky-top w-100" style="background-color:black">
    <div class="container-fluid">
      <div class="some">
          <a href="#"  class="navbar-brand d-none d-xl-none"><i class="fas fa-user-circle fa-lg"></i>
            Enterise Resource Planning</a>
          <a href="#"  class="navbar-brand d-sm-none">ERP Solution</a>
      </div>
      
      <button class="navbar-toggler" style="background-color:black;" type="button" data-toggle="collapse" data-target=".navbar-collapse" 
      aria-controls="myTogglerNav" aria-expanded="true" aria-label="Toggle Navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse  navbar-collapse  justify-content-center justify-content-xl-end" id="myTogglerNav">
        <div class="navbar-nav"  style="letter-spacing:1px;font-family:'Montserrat',sans-serif;font-size: 13px;">
          <li><a class="nav-item nav-link text-white" href="Dashboard.jsp">Dashboard &nbsp; &nbsp;</a></li>
          <li><a class="nav-item nav-link text-white" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-user-plus"></i> Add Employee &nbsp; &nbsp;</a></li>
          <li><a class="nav-item nav-link text-white" href="#education">Logout</a></li>
         
        </div>
      </div>
    </div>
  </nav>
<div class="row container-fluid">
<div class="col">
<div class="row p-5">

<div class="col-10 offset-1 row">

<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h6 class="modal-title" id="exampleModalLabel">Employee Details</h6>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body " >
        <form action="CommonEmployeeServlet" class="col-12 container-fluid justify-content-center" method="post">
        <input type="hidden" name="action" value="AddEmployee">
     	 <div class="form-group row h-100 justify-content-center">
    		<div class="col-5 offset-0 my-auto text-right"><label class="my-auto" for="itemid">ID</label></div>
    		<div class="col-7"><input type="text" class="form-control" id="EmployeeID" name="EmployeeID" placeholder="000"></div>
  		 </div>
  		 <div class="form-group row  justify-content-center">
    		<div class="col-5 align-self-center text-right"><label class="my-auto" for="itemname">First Name</label></div>
    		<div class="col-7"><input type="text" class="form-control" id="Efname" name="Efname" placeholder="First Name"></div>
  		 </div>
  		 <div class="form-group row justify-content-center">
    		<div class="col-5  align-self-center text-right"><label class="my-auto" for="itemquantity">Last Name</label></div>
    		<div class="col-7"><input type="text" class="form-control" id="Elname" name="Elname" placeholder="Last Name"></div>
  		 </div>
  		 <div class="form-group row justify-content-center">
    		<div class="col-5  align-self-center text-right"><label class="my-auto" for="itemquantity">Job Position</label></div>
    		<div class="col-7"><input type="text" class="form-control" id="EJobPosition" name="EJobPosition" placeholder="Position"></div>
  		 </div>
  		 <div class="form-group row justify-content-center">
    		<div class="col-5 align-self-center text-right"><label class="my-auto" for="itemquantity">Job Title</label></div>
    		<div class="col-7"><input type="text" class="form-control" id="EJobTitle" name="EJobTitle" placeholder="Job Title"></div>
  		 </div>
  		 <div class="form-group row  justify-content-center">
    		<div class="col-5  align-self-center center text-right"><label class="my-auto" for="itemshipment">Date of Birth</label></div>
    		<div class="col-7"><input type="date" class="form-control" id="Edob" name="Edob"></div>
  		 </div>
  		 <div class="form-group row justify-content-center">
    		<div class="col-5  align-self-center text-right"><label class="my-auto" for="itemminquantity">Dept Name</label></div>
    		<div class="col-7"><input type="text" class="form-control " id="Edepartment" name="Edepartment" placeholder="Department"></div>
  		 </div>
  		 <div class="form-group row  justify-content-center">
    		<div class="col-5 align-self-center text-right"><label class="my-auto" for="itemsperday">Working Hours</label></div>
    		<div class="col-7"><input type="text" class="form-control" id="EWorkingHours" name="EWorkingHours" placeholder="Enter Working hours"></div>
  		 </div>
  		 <div class="form-group row  justify-content-center">
    		<div class="col-5 align-self-center text-right"><label class="my-auto" for="itemsperday">Contact Number</label></div>
    		<div class="col-7"><input type="text" class="form-control" id="Employeecontact" name="Employeecontact" placeholder="Enter Contact Number"></div>
  		 </div>
  		 <div class="form-group row   justify-content-center">
    		<div class="col-5  align-self-center text-right"><label class="my-auto" for="itemsperday">Address</label></div>
    		<div class="col-7"><textarea class="form-control" id="EmployeeAddress" name="EmployeeAddress" rows="3"></textarea></div>
  		 </div>
  		 <div class="form-group row justify-content-center">
    		<div class="col-5 align-self-center text-right"><label class="my-auto" for="itemsperday">Email Id</label></div>
    		<div class="col-7"><input type="text" class="form-control" id="Employeeemail" name="Employeeemail" placeholder="Enter Email"></div>
  		 </div>
  		 <div class="form-group row justify-content-center">
    		<div class="col-5 align-self-center text-right"><label class="my-auto" for="itemsperday">Manager</label></div>
    		<div class="col-7"><input type="text" class="form-control" id="EReportingOfficer" name="EReportingOfficer" placeholder="Enter Manager"></div>
  		 </div>
  		 
        <div class="modal-footer">
        <input type="button" value="Close" class="btn btn-secondary" data-dismiss="modal"></button>
        <input type="submit" value="submit" class="btn btn-primary"></button>
      </div>
        
        </form>
      </div>
      
    </div>
  </div>
</div>




</div>
<div class="col-12 mt-3 d-sm-block d-none">
<% List<Employee> custlist=(List)session.getAttribute("custlist");
System.out.println(custlist);
System.out.println("checking values");
System.out.println(request.getAttributeNames());%>
<table class="display-none" align="center"  cellpadding="10" cellspacing="0" style="width:100%">
<col width="130"><col width="120"><col width="120"><col width="120"><col width="220"><col width="180"><col width="180">
"
<tr style="background-color:#17202A;color:white">
<td>ID</td>
<td>First Name</td>
<td>Last Name</td>
<td>Job Title</td>
<td>Department Name</td>
<td>Working Hours</td>
<td>Contact Number</td>
<td>Email ID</td>
<td class="text-center bg-danger" colspan=2>Manage</td></tr>
<% for(int i=0;i<custlist.size();i++)
	{
	System.out.println(custlist.size());
	Employee cust1=custlist.get(i);
	%>
	<tr style="background-color: rgba(255, 255, 255, .9);border-bottom:1px solid black">
		<td><%=cust1.getEeid()%></td>
	    <td><%=cust1.getEfname()%></td>
	    <td><%=cust1.getElname()%></td>
	    <td><%=cust1.geteJobPositon()%></td>
	    <td><%=cust1.geteDepartment()%></td>
	    <td><%=cust1.geteWorkingHours()%></td>
	    <td><%=cust1.getEcustcontact()%></td>
	    <td><%=cust1.getEemail()%></td>
	    <td class="text-center"><a href= "CommonEmployeeServlet?action=edit&custid=<%=cust1.getEeid()%>">Edit</a></td>
		<td class="text-center"><a href= "CommonEmployeeServlet?action=delete&custid=<%=cust1.getEeid()%>">Delete</a></td>
	    
	</tr>				
	<%}%>
</table>
</div>
<div class="d-block d-sm-none">
<% for(int i=0;i<custlist.size();i++)
	{
	System.out.println(custlist.size());
	Employee cust1=custlist.get(i);
	%>
<div class="card  mt-3 shadow" style="line-height:25px;width: 20rem;border-radius:15px">
  <div class="card-body">
    <h6 class="card-title d-inline">Employee ID:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=cust1.getEeid()%></h6><br/>
    <h6 class="card-title d-inline">First Name:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=cust1.getEfname()%></h6><br/>
    <h6 class="card-title d-inline">Last Name:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=cust1.getElname()%></h6><br/>
    <h6 class="card-title d-inline">Job Position:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=cust1.geteJobPositon()%></h6><br/>
    <h6 class="card-title d-inline">Department:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=cust1.geteDepartment()%></h6><br/>
    <h6 class="card-title d-inline">Working Hours:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=cust1.geteWorkingHours()%></h6><br/>
    <h6 class="card-title d-inline">Contact No.:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=cust1.getEcustcontact()%></h6><br/>
    <h6 class="card-title d-inline">Email:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=cust1.getEemail()%></h6><br/>
    <div class="mt-2">
    <a class="card-link" href= "CommonEmployeeServlet?action=edit&custid=<%=cust1.getEeid()%>">Edit</a>
	<a class="card-link" href= "CommonEmployeeServlet?action=delete&custid=<%=cust1.getEeid()%>">Delete</a>
    </div>
    
    
    
  </div>
</div>
<%}%>
</div>
</div>
</div>
</body>
</html>