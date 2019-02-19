<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script>
function check()
{
	 
	
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
	}
	return true;
}
function myFunction() {
	  var x = document.getElementById("myTopnav");
	  if (x.className === "topnav") {
	    x.className += " responsive";
	  } else {
	    x.className = "topnav";
	  }
	}
	
</script>


<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Bree+Serif|Comfortaa|Montserrat+Alternates|ZCOOL+XiaoWei" rel="stylesheet">
<link rel="stylesheet" href="homepage/design.css" type="text/css">

<div class="topnav" id="myTopnav">
  <a href="Home.jsp" class="active">HOME</a> 
  <span style="margin-left:0px;color:white">|</span>

  <a href="Login.jsp">LOGIN</a>
    <span style="margin-left:0px;color:white">|</span>

  <a href="Signup.jsp">SIGNUP</a>
    <span style="margin-left:0px;color:white">|</span>

  <a href="#about">ABOUT</a>

  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>
</head>
<body>
<div class="container">
  <img src="Images/homebackground.jpg" alt="Snow" style="width:100%;height:500px;;">
  <div class="centered3">
<%String adminlogin=(String)request.getAttribute("AddCustomersuccess"); %>
<%String customerlogin=(String)request.getAttribute("AddCustomerfailure"); %>
<form action="CommonCustomerServlet" method="post" onsubmit="return check()">
<input type="hidden" name="action" value="AddCustomer">
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
<!-- <tr><td>Customer ID</td><td><input type="text" name="CustomerID" id="CustomerID"/></td><td><span id="custiderror" style="color:red"></span></td></tr> -->
<tr><td>First Name</td><td><input class="page3text" type="text" name="CustomerfName" id="CustomerfName"/></td><td></span></td></tr>
<tr><td >Last Name</td><td><input class="page3text" type="text" name="CustomerlName" id="CustomerlName"/></td><td></td></tr>
<tr><td>Username</td><td><input class="page3text" type="text" name="CustomerUsername" id="CustomerUsername"/></td><td></td></tr>
<tr><td>Password></td><td><input class="page3text" type="password" name="CustomerPassword" id="CustomerPassword"/></td><Td></td></tr>

<tr><td> Address</td><td><textarea class="page3text" name="CustomerAddress" rows="4"cols="0" id="CustomerAddress"></textarea></td><td></td></tr>
<tr><td> Contact No.</td><td><input class="page3text" type="text" name="CustomerContact" id="CustomerContact"/></td><td></td></tr>
<tr><td> Email</td><td><input class="page3text" type="text" name="CustomerEmail" id="CustomerEmail"/></td><td></td></tr>
<tr><td align="center"><input class="signupbutton" type="submit" value="Submit"></td><td align="center"><input class="resetbutton" type="reset" value="Clear"></td></tr>
</table>
</form>
</div>
</div>

</body>
</html>