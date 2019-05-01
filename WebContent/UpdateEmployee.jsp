<%@ page import="com.erp.pojo.Employee" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#FDEBD0">
<%String admin=(String)session.getAttribute("admin"); 
String customer=(String)session.getAttribute("customer"); 
String type=(String)session.getAttribute("role");
System.out.println(admin+" "+customer+" "+type);%>
<nav class="navbar navbar-dark navbar-expand-sm sticky-top w-100" style="background-color:black">
    <div class="container-fluid">
      <div class="some">
          <a href="#"  class="navbar-brand d-none d-xl-none"><i class="fas fa-user-circle fa-lg"></i>
            Enterise Resource Planning</a>
            <%if (admin!=null){ %>
  <div class="justify-content-center text-white">Hi, <%=admin %> welcome to dashboard</div><%} %>
  <%if (customer!=null){ %>
  <div class="justify-content-center text-white">Hi, <%=admin %> welcome to dashboard</div><%} %>
          <a href="#"  class="navbar-brand d-sm-none">ERP Solution</a>
      </div>
      
      <button class="navbar-toggler" style="background-color:black;" type="button" data-toggle="collapse" data-target=".navbar-collapse" 
      aria-controls="myTogglerNav" aria-expanded="true" aria-label="Toggle Navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse  navbar-collapse  justify-content-end justify-content-xl-end" id="myTogglerNav">
        <div class="navbar-nav"  style="letter-spacing:1px;font-family:'Montserrat',sans-serif;font-size: 13px;">
          <li><a class="nav-item nav-link text-white" href="#education">Dashboard</a></li>
           <li><a class="nav-item nav-link text-white" href="CommonLoginServlet?action=logout">Logout</a></li>
          
        </div>
      </div>
    </div>
  </nav> 
<form action="CommonEmployeeServlet" method="post" onsubmit="return validate()">
<%Employee e=(Employee)session.getAttribute("cust");
System.out.println(e);%>

<input type="hidden" name="action" value="UpdateEmployee">
<div class="d-none d-sm-block mt-5 mx-sm-0">
<table align="center" cellpadding="5" cellspacing="0">
<h5 class="text-center">Update Customer Details</h5>
<tr><td>Employee ID</td><td><input class="form-control shadow" type="text" name="EmployeeID"  id="EmployeeID" value=<%=e.getEeid()%> readonly/></td></tr>
<tr><td>Employee first Name</td><td><input class="form-control shadow" type="text" name="Efname" id="Efname" value="<%=e.getEfname()%>"></td></tr>
<tr><td>Employee Last Name</td><td><input class="form-control shadow" type="text" name="Elname" id="Elname" value="<%=e.getElname()%>"></td><td><span id="custnameerror" style="color:red"></span></td></tr>
<tr><td>Employee Job Position</td><td><input class="form-control shadow" type="text" id="EJobPosition" name="EJobPosition" value=<%=e.geteJobPositon()%>></td></tr>
<tr><td>Employee Department</td><td><input class="form-control shadow" type="text" name="Edepartment" id="Edepartment" value=<%=e.geteDepartment()%>></td></tr>
<tr><td>Employee Working Hours.</td><td><input class="form-control shadow" type="text" id="EWorkingHours" name="EWorkingHours" value="<%=e.geteWorkingHours()%>"></td></tr>
<tr><td>Employee Contact.</td><td><input class="form-control shadow" type="text" id="Employeecontact" name="Employeecontact" value="<%=e.getEcustcontact()%>"></td></tr>
<tr><td>Employee Email.</td><td><input class="form-control shadow" type="text" id="Employeeemail" name="Employeeemail" value="<%=e.getEemail()%>"></td></tr>
<tr class="my-3"><td align="right" class=""><input class="btn btn-dark" type="submit" value="Update"></td><td class=""><a class="btn btn-danger" href="CommonEmployeeServlet">cancel</a></td></tr>
</table>
</div>
<div class="d-block d-sm-none mt-5 mx-0">
<table align="center" class="" cellpadding="8" cellspacing="0">
<h5 class="text-center">Update Customer Details</h5>
<tr><td>Employdee ID</td>
<tr><td class=""><input class="form-control input-lg shadow border-0" type="text" style="border-radius:15px" name="EmployeeID"  id="EmployeeID" value=<%=e.getEeid()%> readonly/></td></tr>
<tr><td>Employee first Name</td></tr>
<tr><td><input class="form-control input-lg shadow border-0" type="text" name="Efname" id="Efname" value="<%=e.getEfname()%>" style="border-radius:15px"></td></tr>
<tr><td>Employee Last Name</td><tr>
<tr><td><input class="form-control input-lg shadow border-0" type="text" name="Elname" id="Elname" value="<%=e.getElname()%>" style="border-radius:15px"></td><td><span id="custnameerror" style="color:red"></span></td></tr>
<tr><td>Employee Job Position</td></tr>
<tr><td><input class="form-control input-lg shadow border-0" type="text" id="EJobPosition" style="border-radius:15px" name="EJobPosition" value=<%=e.geteJobPositon()%>></td></tr>
<tr><td>Employee Department</td></tr>
<tr><td><input class="form-control input-lg shadow border-0" type="text" name="Edepartment" style="border-radius:15px" id="Edepartment" value=<%=e.geteDepartment()%>></td></tr>
<tr><td>Employee Working Hours.</td></tr>
<tr><td><input class="form-control input-lg shadow border-0" type="text" id="EWorkingHours" style="border-radius:15px" name="EWorkingHours" value="<%=e.geteWorkingHours()%>"></td></tr>
<tr><td>Employee Condtact.</td></tr>
<tr><td><input class="form-control input-lg shadow border-0" type="text" id="Employeecontact" style="border-radius:15px" name="Employeecontact" value="<%=e.getEcustcontact()%>"></td></tr>
<tr><td>Employee Email.</td>
<tr><td><input class="form-control input-lg shadow border-0" type="text" id="Employeeemail" style="border-radius:15px" name="Employeeemail" value="<%=e.getEemail()%>"></td></tr>
<tr class="my-3 row justify-content-center"><td align="left"><input class="btn btn-dark" type="submit" value="Update"></td><td align="left" class=""><a class="btn btn-danger" href="CommonEmployeeServlet">cancel</a></td></tr>
</table>
</div>
</form>



</body>
</html>