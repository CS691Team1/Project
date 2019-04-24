<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
</head>

<style>

</style>
<script>
function check()
{
	 
	console.log()
	/* 
	var custfname=document.getElementById("CustomerfName").value;
	var custlname=document.getElementById("CustomerlName").value;
	var custcontact=document.getElementById("CustomerContact").value; 
	var custaddress=document.getElementById("CustomerAddress").value;
	var custusername=document.getElementById("CustomerUsername").value;
	var custpassword=document.getElementById("CustomerPassword").value; 
	var custemail=document.getElementById("CustomerEmail").value; 

	if(custfname=="")
	{
	document.getElementById("custfnameerror").innerHTML="Plz enter cust first Name";	
	return false;
	}
	if(!isNaN(custfname))
	{
	document.getElementById("custfnameerror").innerHTML="Plz enter Valid first Name in alphabet format";	
	return false;
	}
	
	if(custlname=="")
	{
	document.getElementById("custlnameerror").innerHTML="Plz enter cust last Name";	
	return false;
	}
	if(!isNaN(custlname))
	{
	document.getElementById("custlnameerror").innerHTML="Plz enter Valid last name in alphabet format";	
	return false;
	}
	if(custusername=="")
	{
	document.getElementById("custusernameerror").innerHTML="Plz enter User Name";	
	return false;
	}
	if(custpassword=="")
	{
	document.getElementById("custpassworderror").innerHTML="Plz enter Password";	
	return false;
	} 
	if(custpassword.length<8)
	{
	document.getElementById("custpassworderror").innerHTML="Plz enter password of mininum 8 character";	
	return false;
	}
	if(custaddress=="")
	{
	document.getElementById("custaddresserror").innerHTML="Plz enter Address";	
	return false;
	}
	if(custcontact=="")
	{
	document.getElementById("custcontacterror").innerHTML="Plz enter Contact Number";	
	return false;
	}
	if(isNaN(custcontact))
	{
	document.getElementById("custcontacterror").innerHTML="Plz enter Contact Number in number format";	
	return false;
	}
	
	

	if(custemail=="")
	{
	document.getElementById("custemailerror").innerHTML="Plz enter email  id ";	
	return false;
	} */
	return true;
}
</script>
<body>
<form action="CommonEmployeeServlet" method="post" style="margin-left:40%">
<input type="hidden" name="action" value="AddEmployee">
<div class="grid-container">
<div class="form">
<table  align="center" cellpadding="5" cellspacing="2">
<caption>Customer Details</caption>
<span id="custfnameerror" style="color:red">
<span id="custlnameerror" style="color:red"></span>
<span id="custdoberror" style="color:red"></span>
<span id="custusernameerror" style="color:red"></span>
<span id="custpassworderror" style="color:red"></span>
<span id="custaddresserror" style="color:red"></span>
<span id="custcontacterror" style="color:red"></span>
<span id="custemailerror" style="color:red"></span>
<tr><td>Custdomer ID</td><td><input type="text" name="EmployeeID" id="EmployeeID"/></td><td><span id="custiderror" style="color:red"></span></td></tr> -->
<tr><td>First Name</td><td><input class="page3text" type="text" name="Efname" id=""Efname""/></td><td></span></td></tr>
<tr><td class="bg-success">Last Name</td><td><input class="page3text" type="text" name="Elname" id="Elname"/></td><td></td></tr>
<tr><td>Date of Birth:</td><td><input class="page3text" type="date" name="Edob" id="Edob"></td><td></td></tr>
<tr><td>Department</td><td><input class="page3text" type="text" name="Edepartment" id="Edepartment"/></td><td></td></tr>
<tr><td>JobPosition</td><td><input class="page3text" type="text" name="EJobPosition" id="EJobPosition"/></td><td></td></tr>
<tr><td>JobTitle</td><td><input class="page3text" type="text" name="EJobTitle" id="EJobTitle"/></td><td></td></tr>
<tr><td>Reporting Officer</td><td><input class="page3text" type="text" name="EReportingOfficer" id="EReportingOfficer"/></td><td></td></tr>
<tr><td>Working Hours</td><td><input class="page3text" type="text" name="EWorkingHours" id="EWorkingHours"/></td><td></td></tr>
<tr><td> Address</td><td><textarea class="page3text" name="EmployeeAddress" rows="4"cols="0" id="EmployeeAddress"></textarea></td><td></td></tr>
<tr><td> Contact No.</td><td><input class="page3text" type="text" name="Employeecontact" id="Employeecontact"/></td><td></td></tr>
<tr><td> Email</td><td><input class="page3text" type="text" name="Employeeemail" id="Employeeemail"/></td><td></td></tr>
<tr><td align="center"><input class="signupbutton" type="submit" value="Submit"></td><td align="center"><input class="resetbutton" type="reset" value="Clear"></td></tr>
</table>
</div>
</div>
</form>
            </div>
            </div>
</body>
</html>