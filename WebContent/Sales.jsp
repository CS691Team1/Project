<%@ page language="java" import="java.util.List,com.erp.pojo.Inventoryitem" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<link href="https://fonts.googleapis.com/css?family=Raleway" rel="stylesheet">
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#F9E79F">
<nav class="navbar navbar-dark navbar-expand-sm sticky-top w-100" style="background-color:black">
    <div class="container-fluid">
      <div class="some">
          <a href="#"  class="navbar-brand d-none d-xl-none"><i class="fas fa-user-circle fa-lg"></i>
            Enterise Resource Planning</a>
          <a href="#"  class="navbar-brand d-sm-none">ERP Solution</a>
      </div>
      
      <button class="navbar-toggler" style="background-color:black;" type="button" data-toggle="collapse" data-target=".navbar-collapse" 
      aria-controls="myTogglerNav" aria-expanded="true" aria-label="Toggle Navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse  navbar-collapse  justify-content-center justify-content-xl-end" id="myTogglerNav">
        <div class="navbar-nav"  style="letter-spacing:1px;font-family:'Montserrat',sans-serif;font-size: 13px;">
          <li><a class="nav-item nav-link text-white" href="Dashboard.jsp">Dashboard &nbsp; &nbsp;</a></li>
           <li><a class="nav-item nav-link text-white" href="CommonLoginServlet?action=logout">Logout</a></li>
         
        </div>
      </div>
    </div>
  </nav>
  <div class="d-none d-xl-block">
<form action="CommonSalesServlet" method="post" id="myForm" class="col-12 mt-3 my-md-auto mt-xl-5">
<div>
    <input type="hidden" name="action" value="addsales">
    <%List<Inventoryitem> e =(List)session.getAttribute("itemlist");
			System.out.println(e);
			
	%>
    <table class="display-none" align="center"  cellpadding="10" cellspacing="0" style="width:90%">
<col width="100"><col width="120"><col width="150"><col width="150">
<tr style="background-color:#17202A;color:white">
<td class="text-center">Item ID</td>
<td class="text-center">Item Name</td>
<td class="text-center">Total Quantity</td>

</tr>
<% 
request.setAttribute("insert",e.size());
for(int i=0;i<e.size();i++)
	{
	System.out.println(e.size());

	Inventoryitem item=e.get(i);
	%>
	<tr style="background-color: rgba(255, 255, 255, .9);border-bottom:1px solid black">
		<td class="text-center"><%=item.getItemid()%></td>
	    <td class="text-center"><input type="text" id="<%= "itemname"+i  %>" name="<%= "itemname"+i  %>" class="form=control" readonly value="<%=item.getItemname()%>"></td>
	    <td class="text-center"><input class="form-control" id="<%= "itemquantity"+i  %>" name="<%= "itemquantity"+i  %>" type="text" placeholder="Enter Total Quantity"></td>
	  	
	 	    
	</tr>				
	<%}%>
	</table>
	</div>
	<div class="row my-5 justify-content-center">
	 <div class="text-center mr-3"><button type="Submit" class="btn btn-primary">Submit</button></div>
		<div class="text-center"><a type="button" class="btn btn-danger" href="Dashboard.jsp">Cancel</button></a></div>
		</div>
</form>
</div>


<div class="d-block row justify-content-center container col-10 offset-1 d-sm-none">
<form action="CommonSalesServlet" method="post" id="myForm" class="col-12 mt-3 my-md-auto mt-xl-5">
<input type="hidden" name="action" value="addsales">
	<div class="row mt-5">

    <%List<Inventoryitem> e1 =(List)session.getAttribute("itemlist");
			System.out.println(e1);
			request.setAttribute("insert",e1.size());
			for(int i=0;i<e1.size();i++)
				{
				System.out.println(e1.size());

				Inventoryitem item=e1.get(i);
			
	%>
	<div class="card my-2 p-3 bg-light border-0" style="border-radius:25px">
	<div class=""><h6 class="d-inline">Item ID: </h6> <%=item.getItemid()%></div>
	<div class=""><h6 class="d-inline">Item Name: </h6><input class="border-0 bg-transparent" id="<%= "itemname"+i  %>" name="<%= "itemname"+i  %>" class="form=control" readonly value="<%=item.getItemname()%>"></div>
	<div class=""><h6 class="d-inline">Total Quantity: </h6><input class="form-control" id="<%= "itemquantity"+i  %>" name="<%= "itemquantity"+i  %>" type="text" placeholder="Enter Total Quantity"></div>
	</div>
<%} %>
<div class="my-5 justify-content-end row container">
	 <div  class="text-center mr-3"><button type="Submit" class="btn btn-primary">Submit</button></div>
	<div class="text-center"><a class="btn btn-danger" href="Dashboard.jsp">Cancel</button></a></div>
</div>
</div>

</form>
</div>
</body>
</html>