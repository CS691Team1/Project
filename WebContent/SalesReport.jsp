<%@ page language="java" import="java.util.List,com.erp.pojo.SalesReport,com.erp.pojo.Inventoryitem" contentType="text/html; charset=ISO-8859-1"
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
<meta charset="ISO-8859-1"><title>Insert title here</title>
</head>
<body>
<div class="d-xl-block d-none" style="font-family: 'Raleway', sans-serif;">
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
<form action="CommonSalesServlet" method="post" id="myForm" class="col-12 mt-3 my-md-auto mt-xl-5">
    <% int totalsale=0;
    String day="";
    String month="";
    List<SalesReport> e =(List)session.getAttribute("itemlist");
    List<Inventoryitem> k=(List)session.getAttribute("product");
    day=(String)request.getAttribute("day");
	month=(String)request.getAttribute("month");
    System.out.println("fuck you once"+k);
	System.out.println("fuck you twice"+e);
	String somevalue="";
	somevalue=(String)request.getAttribute("somevalue"); 	
	System.out.println("arrrrrrrrreeeeee"+somevalue);
	String getbyd=(String)request.getAttribute("getbyd");
	%>
	<div class="row justify-content-center text-danger h6">
	<%
	if(day!=null ){
		out.println(day);
	}
	if(month!=null){
	out.println(month);
	}%>
	</div>
	<div class="row container text-center">
	<div class=" col-6 my-5">Search By Day: &nbsp;<input type="date" id="somedate" name="somedate" class="form-control form-control-sm d-inline col-4 mr-3" class="mr-3"><button  name="action" value="getbydate"  type="submit" class="btn btn-primary">Submit</button></div>
	<div class="col-6  my-5">Search By Month: &nbsp;<input type="month" id="somemonth" name="somemonth" class="form-control form-control-sm d-inline col-4 mr-3"><button value="getbymonth" type="submit" name="action"   class="btn btn-primary">Submit</button></div>
	</div>
    <table class="display-none" align="center"  cellpadding="10" cellspacing="0" style="width:90%">
	<col width="100"><col width="120"><col width="150"><col width="150">
	<tr style="background-color:#17202A;color:white">
		<td class="text-center">Date</td>
		<td class="text-center">Item Name</td>
		<td class="text-center">Total Quantity</td>
		<td class="text-center">Total Sale </td>
	</tr>
<% 
int totalsaleforthismonth=0;
for(int i=0;i<e.size();i++)
	{
	System.out.println("bc kya ho raha hai"+e.size());
	System.out.println("size kitna hai"+k.size());
	SalesReport item=e.get(i);
	for(int j=0;j<k.size();j++){
		Inventoryitem h=k.get(j);
		if(item.getItem().equalsIgnoreCase(h.getItemname())){
			totalsale=h.getPurchaseprice()*item.getQuantity();
			totalsaleforthismonth+=totalsale;
			System.out.println(totalsale);
		}
	}
	%>
	<tr style="background-color: rgba(255, 255, 255, .9);border-bottom:1px solid black">
	    <td class="text-center"><input type="text" id="itemname" name=itemname" class="form-control" value="<%= item.getDate()%>" readonly></td>
	    <td class="text-center"><input type="text" id="itemname" name=itemname" class="form-control" value="<%= item.getItem()%>" readonly></td>
	    <td class="text-center"><input class="form-control" id="itemquantity" name="itemquantity" type="text" value="<%=item.getQuantity()%>" readonly></td>
	    <td class="text-center"><input class="form-control" id="itemquantity" name="itemquantity" type="text" value="<%=totalsale%>" readonly></td>
	</tr>				
	<%}%>
	<% if(somevalue!=null ){%>
	<p class="row justify-content-center text-success">Total Sale for this month: <%=totalsaleforthismonth %></p><%}
	if(getbyd!=null){ %>
	<p class="row justify-content-center text-success">Total Sale for this day: <%=totalsaleforthismonth %></p><%} %>
	 <!-- <td class="text-center"><button type="Submit" class="btn btn-primary">Submit</button></td>-->
	 <td class="text-center"><a type="button" class="btn btn-danger" href="Dashboard.jsp">Cancel</button></td>
</table>
</form>
</div>
<div class="d-block d-sm-none" style="font-family: 'Raleway', sans-serif;background-color:#F7DC6F">
<form action="CommonSalesServlet" method="post" id="myForm" class="col-12 mt-3 my-md-auto mt-xl-5">

 <% int totalsale1=0;
    String day1="";
    String month1="";
    List<SalesReport> e1 =(List)session.getAttribute("itemlist");
    List<Inventoryitem> k1=(List)session.getAttribute("product");
    day1=(String)request.getAttribute("day");
	month1=(String)request.getAttribute("month");
    System.out.println("fuck you once"+k);
	System.out.println("fuck you twice"+e);
	String somevalue1="";
	somevalue=(String)request.getAttribute("somevalue"); 	
	System.out.println("arrrrrrrrreeeeee"+somevalue);
	String getbyd1=(String)request.getAttribute("getbyd");
	%>
	<div class="row justify-content-center text-danger h6">
	<%
	if(day1!=null ){
		out.println(day1);
	}
	if(month1!=null){
	out.println(month1);
	}%>
	</div>
	<div class="text-center my-3"><a type="button" class="btn btn-dark" href="Dashboard.jsp">Go back to Dashboard</a></div>
	<% if(somevalue!=null ){%>
	<p class="row justify-content-center text-success">Total Sale for this month: <%=totalsaleforthismonth %></p><%}
	if(getbyd!=null){ %>
	<p class="row justify-content-center text-success">Total Sale for this day: <%=totalsaleforthismonth %></p><%} %>
	<div class="row container">
		<div class=" col-12 mt-3 ml-1 ">Search By Day:</div>
		<div class="col-12 row ml-1"><input type="date" id="somedate" name="somedate" class="form-control d-inline col-8 mr-1" class="mr-3">
			<button  name="action" value="getbydate"  type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
		</div>
	</div>
	
	<div class="row container">
		<div class=" col-12 mt-3 ml-1 ">Search By Month:</div>
		<div class="col-12 row ml-1"><input type="month" id="somemonth" name="somemonth" class="form-control d-inline col-8 mr-1" class="mr-3">
			<button  name="action" value="getbymonth"  type="submit" class="btn btn-primary"><i class="fas fa-search"></i></button>
		</div>
	</div>
	
	<!-- <div class="col-12  my-5">Search By Month: &nbsp;<input type="month" id="somemonth" name="somemonth" class="form-control form-control-sm d-inline col-4 mr-3">
	<button value="getbymonth" type="submit" name="action"   class="btn btn-primary">Submit</button></div> -->
	<% int totalsaleforthismonth1=0;
	for(int i=0;i<e1.size();i++)
	{
	System.out.println("bc kya ho raha hai"+e1.size());
	System.out.println("size kitna hai"+k1.size());
	SalesReport item=e1.get(i);
	for(int j=0;j<k1.size();j++){
		Inventoryitem h1=k1.get(j);
		if(item.getItem().equalsIgnoreCase(h1.getItemname())){
			totalsale1=h1.getPurchaseprice()*item.getQuantity();
			totalsaleforthismonth1+=totalsale1;
			System.out.println(totalsale1);
		}
	}
	%>
	<div class="card my-4 col-10 offset-1 p-3 border-0 shadow-lg" style="border-radius:25px">
	<div class=""><h6 class="d-inline">Date: </h6><%=item.getDate()%></div>
	<div class=""><h6 class="d-inline">Item Name: </h6><%=item.getItem() %></div>
	<div class=""><h6 class="d-inline">Total Quantity: </h6><%=item.getQuantity() %></div>
	<div class=""><h6 class="d-inline">Total Sale: </h6><%=totalsale%></div>
		</div>
	
	<%}%>
	
</form>


</body>
</html>