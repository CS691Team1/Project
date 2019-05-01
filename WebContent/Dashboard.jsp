<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="homepage/design.css" type="text/css">
<title>Insert title here</title>

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<style>
@media screen and (min-width: 300px) and (max-width: 799px) {
    .fa-users-cog,.fa-dolly-flatbed,.fa-chart-pie {
        font-size: 2.5em;
    }
    .card-title,.card-subtitle,.btn{
    font-size:0.9em;
    }
    img{
    width:10%;}
    
}
html, body {
    margin: 0px;
    padding: 0px;
}
</style>
</head>
<body class="bg-dark">
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
  <div class="justify-content-center text-white d-none d-sm-block">Hi, <%=admin %> welcome to dashboard</div><%} %>
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
          <li><a class="nav-item nav-link text-white" href="#contact">Contact</a></li>
           <li><a class="nav-item nav-link text-white" href="CommonLoginServlet?action=logout">Logout</a></li>
          
        </div>
      </div>
    </div>
  </nav> 
  
 <div class="container-fluid" style="background-color:#F9E79F;height:100%">
 <div class="row align-items-center" style="height:100vh;background-color:#F9E79F;font-family:'Raleway', sans-serif;">
 <div class="col h-100">
 <div class="row h-100">
 <div class="col h-100">
 
 <div class="h-75 row justify-content-center" style="overflow-x: hidden;">
  <%if(admin!=null){ %>
 
 <div class="col-10 align-self-center offset-0 offset-xl-0 mt-4 mb-2 col-md-6 text-dark col-xl-3 ">
  <div class="card shadow-lg border-0 col justify-content-center shadow border-0 " style="background-color:#FBFCFC; border-radius:15px;">
  <div class="card-body text-center">
	<i class="fas fa-users-cog fa-5x m-3"></i>
    <h5 class="card-title h6">Human Resources</h5>
    <h6 class="card-subtitle h6 mb-2 text-muted">Employee's Information</h6>
    <div class="row justify-content-center">
    <div class="col-xl-12 row justify-content-center">
    <div class="col-12  offset-sm-0 offset-xl-0 col-xl-12  mt-2 p-0"><a href="CommonEmployeeServlet"  class="btn btn-secondary">Manadge Employees</a></div>
    </div>
    </div>
  </div>
  </div>
  </div>
  <%} %>
  <div class="col-10 align-self-center  offset-0 offset-xl-0  border-0 col-md-6 col-xl-3 ">
  <div class="card  shadow-lg border-0 col " style="background-color:#FBFCFC;border-radius:15px;">
  <div class="card-body text-center">
	<i class="fas fa-dolly-flatbed  fa-5x text-dark m-3"></i>
    <h5 class="card-title h6">Inventory</h5>
    <h6 class="card-subtitle h6 mb-2 text-muted">Item's Information</h6>
    <div class="row justify-content-center">
    <div class="col-xl-12 row justify-content-center">
    <div class="col-12  offset-sm-0 offset-xl-0 col-xl-12  mt-2  p-0"><a href="CommonInventoryservlet" style="font-size:15px" class="btn btn-secondary">Manage Inventory</a></div>
    </div>
    </div>
  </div>
  </div>
  </div>
  <div class="col-10 align-self-center offset-0 offset-xl-0  border-0 col-md-6 col-xl-3 ">
  <div class="card col border-0 shadow-lg align-self-center" style="background-color:#FBFCFC;border-radius:15px;">
  <div class="card-body  text-center">
	<i class="fas fa-chart-pie fa-5x m-3"></i>
    <h5 class="card-title h6">Sales</h5>
    <h6 class="card-subtitle h6 mb-2 text-muted">Revenue | Profit | Loss</h6>
    <div class="row justify-content-center">
    <div class="col-xl-12 row justify-content-center">
    <div class="col-12  offset-sm-0 offset-xl-0 col-xl-12  mt-2 p-0"><a href="CommonSalesServlet" style="font-size:15px" class="btn btn-secondary">Manage Finance</a></div>
    </div>
    </div>
  </div>
  </div>
  </div>
  
</div>
</div>

 </div>
 </div>
 </div>
 </div>

</body>
</html>