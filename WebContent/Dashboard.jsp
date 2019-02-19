<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://fonts.googleapis.com/css?family=Bree+Serif|Comfortaa|Montserrat+Alternates|ZCOOL+XiaoWei" rel="stylesheet">
<link rel="stylesheet" href="homepage/design.css" type="text/css">
<title>Insert title here</title>
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
<body>
<div class="dashboard">
<div class="message">
 <%String adminlogin=(String)request.getAttribute("adminlogin"); %>
<%String customerlogin=(String)request.getAttribute("customerlogin"); %>
 <%if(customerlogin!= null)
    	{ out.println(customerlogin);
    	
    	}
 if(adminlogin!= null)
	{ out.println(adminlogin);
	
	}%>
</div>
 <div class="grid-container">
       
            <div class="card">
                <img src="Images/Sales.jpg" alt="Avatar" style="width:100%">
                <div class="downbox">
                <h4><b>Sales</b></h4> 
                </div>
            </div>


            <a href="hrmodule.jsp"><div class="card">
                <img src="Images/humanresources.jpg" alt="Avatar" style="width:100%">
                <div class="downbox">
                <h4><b>Human Resouce</b></h4> 
                </div>
            </div></a>

            <div class="card">
                <img src="Images/Inventory.jpg" alt="Avatar" style="width:100%">
                <div class="downbox">
                <h4><b>Inventory</b></h4> 
                </div>
             </div>


             <div class="card">
                <img src="Images/finance.jpg" alt="Avatar" style="width:100%">
                <div class="downbox">
                <h4><b>Finance</b></h4> 
                </div>
            </div>
</div>
  
</body>
</html>