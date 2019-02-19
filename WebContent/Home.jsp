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
  <a href="#home" class="active">HOME</a> 
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
  


  <div class="centered">
  <p class="tagline">"You got to be a believer to be an achiever.<br/><span style="color:#ffbb00">Advanced software made simple."</span></p></div>
</div>
</html>