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
<body style="background-color:#FDEBD0">
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
          <li><a class="nav-item nav-link text-white" data-toggle="modal" data-target="#exampleModal"><i class="fas fa-plus"></i> Add Item &nbsp; &nbsp;</a></li>
          <li><a class="nav-item nav-link text-white" href="#education">Logout</a></li>
         
        </div>
      </div>
    </div>
  </nav>
<div class="row container-fluid">
<div class="col">
<div class="row p-5">

<div class="col-10 offset-1 row justify-content-end">
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body " >
        <form action="CommonInventoryservlet" class="col-12 container-fluid justify-content-center" method="post">
        <input type="hidden" name="action" value="Additem">
     	 <div class="form-group row h-100 justify-content-center">
    		<div class="col-4 offset-1 my-auto text-right"><label class="my-auto" for="itemid">ID</label></div>
    		<div class="col-6"><input type="text" class="form-control" id="itemid" name="itemid" placeholder="000"></div>
  		 </div>
  		 <div class="form-group row  justify-content-center">
    		<div class="col-4 offset-1 align-self-center text-right"><label class="my-auto" for="itemname">Name</label></div>
    		<div class="col-6"><input type="text" class="form-control" id="itemname" name="itemname" placeholder="Item Name"></div>
  		 </div>
  		 <div class="form-group row mx-2 justify-content-center">
    		<div class="col-4 offset-1 align-self-center text-right"><label class="my-auto" for="itemquantity">Quantity</label></div>
    		<div class="col-6"><input type="text" class="form-control" id="itemquantity" name="itemquantity" placeholder="Item Quantity"></div>
  		 </div>
  		 <div class="form-group row mx-2  justify-content-center">
    		<div class="col-4 offset-1 align-self-center text-right"><label class="my-auto" for="itemshipment">Next Shipment</label></div>
    		<div class="col-6"><input type="date" class="form-control" id="itemshipment" name="itemshipment"></div>
  		 </div>
  		 <div class="form-group row mx-2  justify-content-center">
    		<div class="col-4 offset-1 align-self-center text-right"><label class="my-auto" for="itemminquantity">Min. Quantity</label></div>
    		<div class="col-6"><input type="text" class="form-control " id="itemminquantity" name="itemminquantity"></div>
  		 </div>
  		 <div class="form-group row mx-2  justify-content-center">
    		<div class="col-4 offset-1 align-self-center text-right"><label class="my-auto" for="itemsperday">Per Day Use</label></div>
    		<div class="col-6"><input type="text" class="form-control" id="itemsperday" name="itemsperday"></div>
  		 </div>
        <div class="modal-footer">
        <input type="button" value="Close" class="btn btn-secondary" data-dismiss="modal"></button>
        <input type="submit" value="submit" class="btn btn-primary"></button>
      </div>
        
        </form>
      </div>
      
    </div>
  </div>
</div>




</div>
<div class="col-12 mt-3 d-sm-block d-none">
<% List<Inventoryitem> itemlist=(List)session.getAttribute("itemlist");
System.out.println(itemlist);
System.out.println("checking values");
System.out.println(request.getAttributeNames());%>
<table class="display-none" align="center"  cellpadding="10" cellspacing="0" style="width:80%">
<col width="100"><col width="120"><col width="150"><col width="150">
<tr style="background-color:#17202A;color:white">
<td class="text-center">Item ID</td>
<td class="text-center">Item Name</td>
<td class="text-center">Item Quantity</td>
<td class="text-center">Shipment Date</td>
<td class="text-center">Minimum Quantity</td>
<td class="text-center">Per-Day-Use</td>
<td class="bg-danger text-center" colspan=2>Manage</td></tr>
</tr>
<% for(int i=0;i<itemlist.size();i++)
	{
	System.out.println(itemlist.size());
	Inventoryitem item=itemlist.get(i);
	%>
	<tr style="background-color: rgba(255, 255, 255, .9);border-bottom:1px solid black">
		<td class="text-center"><%=item.getItemid()%></td>
	    <td class="text-center"><%=item.getItemname()%></td>
	    <td class="text-center"><%=item.getItemquantity()%></td>
	    <td class="text-center"><%=item.getItemshipment()%></td>
	    <td class="text-center"><%=item.getMinitemquantity()%></td>
	    <td class="text-center"><%=item.getPerdayuse()%></td>
	    <td class="text-center"><a href="CommonInventoryservlet?action=update&itemid=<%=item.getItemid()%>">Edit</a></td>
		<td class="text-center"><a href="CommonInventoryservlet?action=delete&itemid=<%=item.getItemid()%>">Delete</a></td>
	    
	</tr>				
	<%}%>
</table>
</div>
<div class="d-block d-sm-none">
<% for(int i=0;i<itemlist.size();i++)
{
System.out.println(itemlist.size());
Inventoryitem item=itemlist.get(i);
	%>
<div class="card  mt-3 shadow" style="line-height:25px;width: 18rem;border-radius:15px">
  <div class="card-body">
    <h6 class="card-title d-inline">Item ID:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=item.getItemid()%></h6><br/>
    <h6 class="card-title d-inline">Item Name:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=item.getItemname()%></h6><br/>
    <h6 class="card-title d-inline">Item Quantity:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=item.getItemquantity()%></h6><br/>
    <h6 class="card-title d-inline">Shipment Date:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=item.getItemshipment()%></h6><br/>
    <h6 class="card-title d-inline">Min Quanitity:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=item.getMinitemquantity()%></h6><br/>
    <h6 class="card-title d-inline">Per Day Use:</h6>
    <h6 class="card-subtitle mb-2 text-muted d-inline"><%=item.getPerdayuse()%></h6><br/>
   
    <div class="mt-2">
    <a class="card-link" href= "CommonInventoryservlet?action=update&itemid=<%=item.getItemid()%>">Edit</a>
	<a class="card-link" href= "CommonInventoryservlet?action=delete&itemid=<%=item.getItemid()%>">Delete</a>
    </div>
    
    
    
  </div>
</div>
<%}%>
</div>
</div>
</div>
</div>
</body>
</html>