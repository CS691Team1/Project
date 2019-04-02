<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

<style>
body{
overflow-x: hidden;
}
.container-fluid{
  padding-left: 0rem;
  padding-right: 0rem;
  overflow: hidden;
}
</style>

</head>
<body>
<%String custaddsuccess=(String)request.getAttribute("AddCustomersuccess"); %>
<%String custaddfailure=(String)request.getAttribute("AddCustomerfailure"); %>
<%String adminlogin=(String)request.getAttribute("adminlogin"); %>
<%String customerlogin=(String)request.getAttribute("customerlogin"); %>
 <%if(customerlogin!= null) { out.println(customerlogin); }
 if(adminlogin!= null)
	{ out.println(adminlogin);
	
	}%>
<div class="container-fluid bg-dark">
<div class="row" style="height:100vh;background-color:#F5B7B1;font-family:'Raleway', sans-serif;">
<div class="col m-auto">
<div class="row">
<div class="col-10 offset-1 col-xl-4 offset-xl-4 m-auto shadow-lg" style="border-radius:45px;background-color:#FBFCFC">
<form class="card-body" action="CommonLoginServlet" method="post">
  <input type="hidden" name="action" value="login">
  <div class="form-group row justify-content-center mt-3" >
  <i class="fas fa-user-circle fa-5x"></i>
</div>
<div>
    <label for="Custusername" class="text-secondary">User Name</label>
    <input type="input" style="border-radius:12px;" class="form-control shadow border-0" id="Custusername" name="Custusername"  placeholder="Enter Username">
  </div>
  <div class="form-group mt-3">
    <label for="Custpassword" class="text-secondary">Password</label>
    <input type="password" style="border-radius:12px;" class="form-control shadow border-0"" id="Custpassword" name="Custpassword" placeholder="Password">
  </div>
  <div class="row justify-content-end mt-5 form-group">
   <a href="Signup.jsp"><input type="button" class="btn btn-dark shadow-lg mr-3" value="Signup" style="border-radius:15px;"></button></a>
   <button type="submit" class="btn btn-dark shadow-lg" style="border-radius:15px;" value="login">LogIn</button>
</div>
</form>

</div>
</div>
</div>
</div>
 </div>
 



</body>
</html>