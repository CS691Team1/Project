<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Bree+Serif|Comfortaa|Montserrat+Alternates|ZCOOL+XiaoWei" rel="stylesheet">
<link rel="stylesheet" href="homepage/design.css" type="text/css">
<script>
function myFunction() {
  var x = document.getElementById("myTopnav");
  if (x.className === "topnav") {
    x.className += " responsive";
  } else {
    x.className = "topnav";
  }
}
</script>
<div class="topnav" id="myTopnav">
  <a href="Home.jsp" class="active">HOME</a> 
  <span style="margin-left:0px;color:white">|</span>

  <a href="#news">LOGIN</a>
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
  


      <%String custaddsuccess=(String)request.getAttribute("AddCustomersuccess"); %>
<%String custaddfailure=(String)request.getAttribute("AddCustomerfailure"); %>

  <div class="centered1">
  <%String adminlogin=(String)request.getAttribute("adminlogin"); %>
<%String customerlogin=(String)request.getAttribute("customerlogin"); %>
 <%if(customerlogin!= null)
    	{ out.println(customerlogin);
    	
    	}
 if(adminlogin!= null)
	{ out.println(adminlogin);
	
	}%>
  <form action="CommonLoginServlet" method="post">
<input type="hidden" name="action" value="login">

<table  align="center" cellspacing="0" cellpadding="10">
<tr align="center"><td colspan="2"><label>Login Credentials</label></td></tr>
<tr align="right"><td align="center"><select name="type"><option value="admin">admin</option>
<option value="customer">customer</option></select></td></tr>
<tr align="center"><td><label for="fname">User Name</label><br/><input class="textinput" type="text" name="name"></td></tr>
<tr align="center"><td><label for="fname">Password</label><br/><input class="textinput" type="password" name="password"></td></tr>
<tr align="center"><td colspan="2"><input class="submit" type="submit" value="Login"></td></tr>

</table>
</form>
  </div>
</div>


</body>
</html>