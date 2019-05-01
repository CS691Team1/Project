<%@ page language="java" import="com.erp.pojo.Inventoryitem" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
@media only screen and (min-width:601px) and (max-width: 1024px) and (orientation: portrait) {
.mainn{
font-size:30px;
}
} 
</style>
<script>
function myFunction() {
  document.getElementById("myForm").reset();
}
</script>
</head>
<body>
<nav class="navbar navbar-dark navbar-expand-sm sticky-top" style="background-color:black">
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

      <div class="collapse  navbar-collapse  justify-content-end justify-content-xl-end" id="myTogglerNav">
        <div class="navbar-nav"  style="letter-spacing:1px;font-family:'Montserrat',sans-serif;font-size: 13px;">
          <li><a class="nav-item nav-link text-white" href='Dashboard.jsp'>Dashboard</a></li>
           <li><a class="nav-item nav-link text-white" href="CommonLoginServlet?action=logout">Logout</a></li>
        </div>
      </div>
    </div>
  </nav> 
<div class="container" style="height:100vh;font-family:'Raleway', sans-serif;">
<div class="col align-self-center">
<div class="row">
<div class="col-10 offset-1 col-xl-10 offset-xl-1 row justify-content-center mt-5" style="height:100vh">

<form action="CommonInventoryservlet" method="post" id="myForm" class="col-12 mt-3 my-md-auto mt-xl-5"  >
    <input type="hidden" name="action" value="Updateitem">

  <%Inventoryitem e=(Inventoryitem)session.getAttribute("item");
			System.out.println(e);%>
     	 <div class="row my-2 my-xl-2 justify-content-center mainn">
    		<div class="col-12  col-xl-2  my-auto text-xl-right"><label class="my-auto" for="itemid">Item ID</label></div>
    		<div class="col-12 col-xl-4 offset-xl-0 w-100"><input type="text" class="form-control form-control-lg" style="height:100%" id="itemid" name="itemid" value="<%=e.getItemid()%>"></div>
  		 </div>
  		 <div class="row my-2 my-xl-2 justify-content-center mainn">
    		<div class="col-12  col-xl-2  my-auto text-xl-right"><label class="my-auto" for="itemname">Name</label></div>
    		<div class="col-12 col-xl-4 offset-xl-0 w-100"><input type="text" class="form-control form-control-lg" id="itemname" name="itemname" value="<%=e.getItemname()%>"></div>
  		 </div>
  		 <div class="row my-2 my-xl-2 justify-content-center mainn">
    		<div class="col-12 col-xl-2  my-auto text-xl-right"><label class="my-auto" for="itemquantity">Quantity</label></div>
    		<div class="col-12 col-xl-4 offset-xl-0 w-100"><input type="text" class="form-control form-control-lg" id="itemquantity" name="itemquantity" value="<%=e.getItemquantity() %>"></div>
  		 </div>
  		 <div class="row my-2 my-xl-2 justify-content-center mainn">
    		<div class="col-12 col-xl-2 my-auto text-xl-right"><label class="my-auto" for="itemshipment">Next Shipment</label></div>
    		<div class="col-12 col-xl-4 offset-xl-0 w-100"><input type="date" class="form-control form-control-lg" id="itemshipment" name="itemshipment"></div>
  		 </div>
  		 <div class="row my-2 my-xl-2 justify-content-center mainn">
    		<div class="col-12  col-xl-2  my-auto text-xl-right"><label class="my-auto" for="itemminquantity">Min. Quantity</label></div>
    		<div class="col-12 col-xl-4 offset-xl-0 w-100"><input type="text" class="form-control form-control-lg" id="itemminquantity" name="itemminquantity" value="<%=e.getMinitemquantity()%>"></div>
  		 </div>
  		 <div class="row my-2 my-xl-2 justify-content-center mainn">
    		<div class="col-12  col-xl-2  my-auto text-xl-right"><label class="my-auto" for="itemsperday">Per Day Use</label></div>
    		<div class="col-12 col-xl-4 offset-xl-0 w-100"><input type="text" class="form-control form-control-lg" id="itemsperday" name="itemsperday" value="<%=e.getPerdaysale()%>"></div>
  		 </div>
  		 <div class="row my-2 my-xl-2 justify-content-center mainn">
    		<div class="col-12  col-xl-2  my-auto text-xl-right"><label class="my-auto" for="itemsperday">Purchase Price</label></div>
    		<div class="col-12 col-xl-4 offset-xl-0 w-100"><input type="text" class="form-control form-control-lg" id="itemspurchaseprice" name="itemspurchaseprice" value="<%=e.getPurchaseprice()%>"></div>
  		 </div>
  		 <div class="row my-2 my-xl-2 justify-content-center mainn">
    		<div class="col-12  col-xl-2  my-auto text-xl-right"><label class="my-auto" for="itemsperday">Sale Price</label></div>
    		<div class="col-12 col-xl-4 offset-xl-0 w-100"><input type="text" class="form-control form-control-lg" id="itemssaleprice" name="itemssaleprice" value="<%=e.getSaleprice()%>"></div>
  		 </div>
        <div class="row  my-3 my-xl-4 justify-content-center mainn">
        <button href="CommonInventoryservlet" class="btn btn-dark mr-3">Submit</button>
        <a href="CommonInventoryservlet" class="btn btn-danger mr-3" >Cancel</a>
        
      </div>

</form>
</div>
</div>
</div>
</div>
</div>
</div>
</body>
</html>