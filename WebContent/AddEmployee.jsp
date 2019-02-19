<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Bree+Serif|Comfortaa|Montserrat+Alternates|ZCOOL+XiaoWei" rel="stylesheet">
<link rel="stylesheet" href="homepage/design.css" type="text/css">

<div class="topnav" id="myTopnav">
  <a href="Home.jsp" class="active">HOME</a> 
  <span style="margin-left:0px;color:white">|</span>

  <a href="Home.jsp">LOGOUT</a>
    <span style="margin-left:0px;color:white">|</span>



  <a href="#about">ABOUT</a>

  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
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
<form action="CommonEmployeeServlet" method="post">
<input type="hidden" name="action" value="AddEmployee">

	<div class="grid-container">
         <div class="form">
      <!--           <table>
                    <th>Personal info</th>
                    <tr>
                    <td><label>First Name</label></td>
                    <td><input type="text" name="firstname" placeholder="John"></td>
                    </tr>
                    <tr>
                    <td><label>Last Name</label></td>
                    <td><input type="text" name="lastname" placeholder="Doe"></td>
                    </tr>
                    <tr>
                    <td><label>Date Of Birth</label></td>
                    <td><input type="text" name="dob" placeholder="11/6/1995"></td>
                    </tr>
                    <tr>
                    <td><label>Email</label></td>
                    <td><input type="email" name="email" placeholder="johndoe@gmail.com"></td>
                    </tr>
                    <tr>
                    <td><label>Contact No</label></td>
                    <td><input type="tel" name="number" placeholder="+12015648965"></td>
                    </tr>
                    <tr>
                    <td><label>Address</label></td>
                    <td><input type="text" name="address1" placeholder="225 Academy street"></td>
                    </tr>
                    <tr>
                    <td></td>
                    <td><input type="text" name="address2" placeholder="Jersey City, NJ07306"></td>
                    </tr>
                </table>
                </div>
                <div class="form">
                        <table>
                                <th class-"addemployeeth">Employee Position</th>
                                <tr>
                                <td><label>Department</label></td>
                                <td><input type="text" name="department" placeholder="Banking"></td>
                                </tr>
                                <tr>
                                <td><label>Job Position</label></td>
                                <td><input type="text" name="job-position" placeholder="Manager"></td>
                                </tr>
                                <tr>
                                <td><label>Job Title</label></td>
                                <td><input type="text" name="job-title" placeholder="Senior Incharge"></td>
                                </tr>
                                <tr>
                                <td><label>Reporting Officer</label></td>
                                <td><input type="text" name="reporting-officer" placeholder="Mr.Smith"></td>
                                </tr>
                                <tr>
                                <td><label>Working Hours</label></td>
                                <td><input type="number" name="number" placeholder="45"></td>
                                </tr>
                                <tr><input type="submit"></tr>
                            </table> -->
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
<tr><td>Customer ID</td><td><input type="text" name="EmployeeID" id="EmployeeID"/></td><td><span id="custiderror" style="color:red"></span></td></tr> -->
<tr><td>First Name</td><td><input class="page3text" type="text" name="Efname" id=""Efname""/></td><td></span></td></tr>
<tr><td >Last Name</td><td><input class="page3text" type="text" name="Elname" id="Elname"/></td><td></td></tr>
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