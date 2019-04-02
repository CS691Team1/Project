<%@ page language="java" import="java.util.List,com.erp.pojo.Inventoryitem" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="row container-fluid">
<div class="col">
<div class="row p-5">

<div class="col-10 offset-1 row justify-content-end">
<button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
  Add Item
</button>
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
<div class="col-10 offset-1">
<% List<Inventoryitem> itemlist=(List)session.getAttribute("itemlist");
System.out.println(itemlist);
System.out.println("checking values");
System.out.println(request.getAttributeNames());%>
<table align="center"  cellpadding="10" cellspacing="0" style="width:800px">

<% for(int i=0;i<itemlist.size();i++)
	{
	System.out.println(itemlist.size());
	Inventoryitem item=itemlist.get(i);
	%>
	<tr>
		<td><%=item.getItemid()%></td>
	    <td><%=item.getItemname()%></td>
	    <td><%=item.getItemquantity()%></td>
	    <td><%=item.getItemshipment()%></td>
	    <td><%=item.getMinitemquantity()%></td>
	    <td><%=item.getPerdayuse()%></td>
	   
	    <td><a href="CommonInventoryservlet?action=update&itemid=<%=item.getItemid()%>" >Edit</a></td>
		<td><a href="CommonInventoryservlet?action=delete&itemid=<%=item.getItemid()%>">Delete</a></td>
	    
	</tr>				
	<%}%>
</table>
</div>
</form>
</div>
</div>
</body>
</html>