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
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<!-- <div class="topnav" id="myTopnav">
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
</div> -->
</head>
<body>
<%-- <div class="container">
  <img src="Images/homebackground.jpg" alt="Snow" style="width:100%;height:500px;;">
  <div class="centered3">
<%String adminlogin=(String)request.getAttribute("AddCustomersuccess"); %>
<%String customerlogin=(String)request.getAttribute("AddCustomerfailure"); %>
<form action="CommonCustomerServlet" method="post" onsubmit="return check()">
<input type="hidden" name="action" value="AddCustomer">
<table align="center" cellpadding="5" cellspacing="2">
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
</div> --%>
<nav class="navbar navbar-dark navbar-expand-sm sticky-top w-100" style="background-color:black">
    <div class="container-fluid">
      <div class="some">
          <a href="#"  class="navbar-brand d-none d-xl-none"><i class="fas fa-user-circle fa-lg"></i>
            Bhushan Shukrachary Navgire</a>
          <a href="#"  class="navbar-brand d-sm-none">ERP Solution</a>
      </div>
      
      <button class="navbar-toggler" style="background-color:black;" type="button" data-toggle="collapse" data-target=".navbar-collapse" 
      aria-controls="myTogglerNav" aria-expanded="true" aria-label="Toggle Navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse  navbar-collapse  justify-content-center justify-content-xl-center" id="myTogglerNav">
        <div class="navbar-nav"  style="letter-spacing:1px;font-family:'Montserrat',sans-serif;font-size: 13px;">
          <li><a class="nav-item nav-link text-white" href='#'>Login</a></li>
          <li><a class="nav-item nav-link text-white" href='#skills'>Login</a></li>
          <li><a class="nav-item nav-link text-white" href="#education">Dashboard</a></li>
          <li><a class="nav-item nav-link text-white" href="#Achievements"></a></li>
          <li><a class="nav-item nav-link text-white" href="#projects">Projects</a></li>
          <li><a class="nav-item nav-link text-white" href="#contact">Contact</a></li>
        </div>
      </div>
    </div>
  </nav> 
<div class="container-fluid" style="background-color:#F2F3F4;height:100vh">

<div class="row" style="height:100vh;font-family:'Raleway', sans-serif;">
<div class="col">
<div class="row justify-content-center mt-5 h4">
<i class="fas fa-user-plus fa-3x text-dark"></i>

</div>
<form action="CommonCustomerServlet" class="row h-100" style="background-color:#F2F3F4;" method="post">
<input type="hidden" name="action" value="AddCustomer">
<div class="col-12 mt-3">
	<div class="row justify-content-center">
		<div class="form-group col-10 offset-0 col-xl-3 offset-xl-0">
    		<label for="CustomerfName">First Name</label>
    		<input type="text" class="form-control shadow border-0" style="border-radius:12px;" id="CustomerfName" name="CustomerfName" placeholder="Enter First Name">
  		</div>
    	<div class="form-group col-10 offset-0 col-xl-3">
    		<label for="CustomerlName">Last Name</label>
    		<input type="text" class="form-control shadow border-0" style="border-radius:12px;" id="CustomerlName" name="CustomerlName" placeholder="Enter Last Name">
    	</div>
    	<div class="form-group col-10 offset-0 col-xl-3 offset-xl-0">
    		<label for="CustomerUsername">Username</label>
    		<input type="text" class="form-control shadow border-0" style="border-radius:12px;" id="CustomerUsername" name="CustomerUsername" placeholder="Enter Username">
  		</div>
   	</div>
   	<div class="row justify-content-center">
	    <div class="form-group col-10 offset-0 col-xl-3">
    		<label for="CustomerPassword">Password</label>
    		<input type="password" class="form-control shadow border-0" style="border-radius:12px;" id="CustomerPassword" name="CustomerPassword" placeholder="Enter Password">
   		 </div>
    	<div class="form-group col-10 offset-0 col-xl-3 offset-xl-0">
    		<label for="CustomerContact">Contact Number</label>
    		<input type="text" class="form-control shadow border-0" style="border-radius:12px;" id="CustomerContact" name="CustomerContact" placeholder="Enter Contact Number">
  		</div>
    	<div class="form-group col-10 offset-0 col-xl-3">
    		<label for="CustomerEmail">Email</label>
    		<input type="email" class="form-control shadow border-0" style="border-radius:12px;" id="CustomerEmail" aria-describedby="emailHelp" name="CustomerEmail" placeholder="Enter Email ID">
   		</div>
   </div>
   <div class="row justify-content-center">
		<div class="form-group col-10 offset-0 col-xl-3 offset-xl-0">
    		<label for="CustStreet">Street Address</label>
    		<input type="text" class="form-control shadow border-0" style="border-radius:12px;" id="CustStreet" name="CustStreet"  placeholder="Enter Street Address">
  		</div>
   		<div class="form-group col-10 offset-0 col-xl-3">
    		<label for="CustApt">Apartment</label>
    		<input type="text" class="form-control shadow border-0" style="border-radius:12px;" id="CustApt" name="CustApt" placeholder="Enter Apartment No.">
    	</div>
    	<div class="form-group col-10 offset-0 col-xl-3 offset-xl-0">
    		<label for="CustZip">Zip Code</label>
    		<input type="text" class="form-control shadow border-0" style="border-radius:12px;" id="CustZip" name="CustZip" placeholder="Enter Zip Code">
  		</div>
   </div>
   <div class="row justify-content-center ">
		<div class="form-group col-10 offset-0 col-xl-3">
    		<label for="CustCiy">City</label>
    		<input type="text" class="form-control shadow rounded-4 border-0" style="border-radius:12px;" id="CustCiy" name="CustCity" placeholder="Enter City">
   		</div>
   		<div class="form-group col-10 offset-0 col-xl-3">
    		<label for="CustState">State</label>
    		<input type="text" class="form-control shadow rounded-4 border-0" style="border-radius:12px;" id="CustState" name="CustState" placeholder="Enter City">
   		</div>
   		<div class="form-group col-10 offset-0 col-xl-3">
    		<label for="CustCoutnry">Country</label>
    		<input type="text" class="form-control shadow rounded-4 border-0" style="border-radius:12px;" id="CustCoutnry" name="CustCoutnry" placeholder="Enter City">
   		</div>
   </div>
   <div class="row justify-content-center mt-3" >
		<div class="form-group justify-content-center row">
    		<button class="btn btn-dark" value="Submit" style="border-radius:15px;">Submit</button>
   		</div>
       
	  
  </div>
 </div>  
</form>
</div>
</div>
</div>

</body>
</html>