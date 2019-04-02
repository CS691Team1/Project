<%@ page import="com.erp.pojo.Employee" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<form action="CommonEmployeeServlet" method="post" onsubmit="return validate()">
<%Employee e=(Employee)session.getAttribute("cust");
System.out.println(e);%>

<input type="hidden" name="action" value="UpdateEmployee">
<table align="center" cellpadding="5" cellspacing="0">
<caption>Update Customer Details</caption>
<tr><td>Employee ID</td><td><input type="text" name="EmployeeID"  id="EmployeeID" value=<%=e.getEeid()%> readonly/></td></tr>
<tr><td>Employee first Name</td><td><input type="text" name="Efname" id="Efname" value="<%=e.getEfname()%>"></td></tr>
<tr><td>Employee Last Name</td><td><input type="text" name="Elname" id="Elname" value="<%=e.getElname()%>"></td><td><span id="custnameerror" style="color:red"></span></td></tr>
<tr><td>Employee Job Position</td><td><input type="text" id="EJobPosition" name="EJobPosition" value=<%=e.geteJobPositon()%>></td></tr>
<tr><td>Employee Department</td><td><input type="text" name="Edepartment" id="Edepartment" value=<%=e.geteDepartment()%>></td></tr>
<tr><td>Employee Working Hours.</td><td><input type="text" id="EWorkingHours" name="EWorkingHours" value="<%=e.geteWorkingHours()%>"></td></tr>
<tr><td>Employee Contact.</td><td><input type="text" id="Employeecontact" name="Employeecontact" value="<%=e.getEcustcontact()%>"></td></tr>
<tr><td>Employee Email.</td><td><input type="text" id="Employeeemail" name="Employeeemail" value="<%=e.getEemail()%>"></td></tr>
<tr><td align="center"><input type="submit" value="Update"></td><td align="center"><input type="reset"/></td></tr>
</table>
</form>
</body>
</html>