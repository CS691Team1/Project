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
<title>Insert title here</title>
</head>
<body>
<div class="row container-fluid">
<div class="col">
<div class="row p-5">

<div class="col-10 offset-1 row justify-content-end">
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Add Item
</button>
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Employee Details</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body " >
        <form action="CommonEmployeeServlet" class="col-12 container-fluid justify-content-center" method="post">
        <input type="hidden" name="action" value="AddEmployee">
     	 <div class="form-group row h-100 justify-content-center">
    		<div class="col-4 offset-1 my-auto text-right"><label class="my-auto" for="itemid">ID</label></div>
    		<div class="col-6"><input type="text" class="form-control" id="EmployeeID" name="EmployeeID" placeholder="000"></div>
  		 </div>
  		 <div class="form-group row  justify-content-center">
    		<div class="col-4 offset-1 align-self-center text-right"><label class="my-auto" for="itemname">First Name</label></div>
    		<div class="col-6"><input type="text" class="form-control" id="Efname" name="Efname" placeholder="First Name"></div>
  		 </div>
  		 <div class="form-group row mx-2 justify-content-center">
    		<div class="col-4 offset-1 align-self-center text-right"><label class="my-auto" for="itemquantity">Last Name</label></div>
    		<div class="col-6"><input type="text" class="form-control" id="Elname" name="Elname" placeholder="Last Name"></div>
  		 </div>
  		 <div class="form-group row mx-2 justify-content-center">
    		<div class="col-4 offset-1 align-self-center text-right"><label class="my-auto" for="itemquantity">Job Position</label></div>
    		<div class="col-6"><input type="text" class="form-control" id="EJobPosition" name="EJobPosition" placeholder="Position"></div>
  		 </div>
  		 <div class="form-group row mx-2 justify-content-center">
    		<div class="col-4 offset-1 align-self-center text-right"><label class="my-auto" for="itemquantity">Job Title</label></div>
    		<div class="col-6"><input type="text" class="form-control" id="EJobTitle" name="EJobTitle" placeholder="Job Title"></div>
  		 </div>
  		 <div class="form-group row mx-2  justify-content-center">
    		<div class="col-4 offset-1 align-self-center text-right"><label class="my-auto" for="itemshipment">Date of Birth:</label></div>
    		<div class="col-6"><input type="date" class="form-control" id="Edob" name="Edob"></div>
  		 </div>
  		 <div class="form-group row mx-2  justify-content-center">
    		<div class="col-5 align-self-center text-right"><label class="my-auto" for="itemminquantity">Department Name</label></div>
    		<div class="col-6"><input type="text" class="form-control " id="Edepartment" name="Edepartment" placeholder="Department"></div>
  		 </div>
  		 <div class="form-group row mx-2  justify-content-center">
    		<div class="col-5 align-self-center text-right"><label class="my-auto" for="itemsperday">Working Hours</label></div>
    		<div class="col-6"><input type="text" class="form-control" id="EWorkingHours" name="EWorkingHours" placeholder="Enter Working hours"></div>
  		 </div>
  		 <div class="form-group row mx-2  justify-content-center">
    		<div class="col-5 align-self-center text-right"><label class="my-auto" for="itemsperday">Contact Number</label></div>
    		<div class="col-6"><input type="text" class="form-control" id="Employeecontact" name="Employeecontact" placeholder="Enter Contact Number"></div>
  		 </div>
  		 <div class="form-group row mx-2  justify-content-center">
    		<div class="col-4 offset-1 align-self-center text-right"><label class="my-auto" for="itemsperday">Address</label></div>
    		<div class="col-6"><textarea class="form-control" id="EmployeeAddress" name="EmployeeAddress" rows="3"></textarea></div>
  		 </div>
  		 <div class="form-group row mx-2  justify-content-center">
    		<div class="col-4 offset-1 align-self-center text-right"><label class="my-auto" for="itemsperday">Email Id</label></div>
    		<div class="col-6"><input type="text" class="form-control" id="Employeeemail" name="Employeeemail" placeholder="Enter Email"></div>
  		 </div>
  		 <div class="form-group row mx-2  justify-content-center">
    		<div class="col-4 offset-1 align-self-center text-right"><label class="my-auto" for="itemsperday">Manager</label></div>
    		<div class="col-6"><input type="text" class="form-control" id="EReportingOfficer" name="EReportingOfficer" placeholder="Enter Manager"></div>
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
<div class="col-12 mt-3">
<% List<Employee> custlist=(List)session.getAttribute("custlist");
System.out.println(custlist);
System.out.println("checking values");
System.out.println(request.getAttributeNames());%>
<table align="center"  cellpadding="10" cellspacing="0" style="width:100%">
<col width="130"><col width="120"><col width="120"><col width="120"><col width="220"><col width="180"><col width="180">
<tr style="background-color:#17202A;color:white">
<td>ID</td>
<td>First Name</td>
<td>Last Name</td>
<td>Job Title</td>
<td>Department Name</td>
<td>Working Hours</td>
<td>Contact Number</td>
<td>Email ID</td>
<td colspan=2>Manage</td></tr>
<% for(int i=0;i<custlist.size();i++)
	{
	System.out.println(custlist.size());
	Employee cust1=custlist.get(i);
	%>
	<tr>
		<td><%=cust1.getEeid()%></td>
	    <td><%=cust1.getEfname()%></td>
	    <td><%=cust1.getElname()%></td>
	    <td><%=cust1.geteJobPositon()%></td>
	    <td><%=cust1.geteDepartment()%></td>
	    <td><%=cust1.geteWorkingHours()%></td>
	    <td><%=cust1.getEcustcontact()%></td>
	    <td><%=cust1.getEemail()%></td>
	    <td><a href= "CommonEmployeeServlet?action=edit&custid=<%=cust1.getEeid()%>">Edit</a></td>
		<td><a href= "CommonEmployeeServlet?action=delete&custid=<%=cust1.getEeid()%>">Delete</a></td>
	    
	</tr>				
	<%}%>
</table>
</div>
</form>
</div>
</div>
</body>
</html>