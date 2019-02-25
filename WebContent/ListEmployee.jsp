<%@ page language="java" import="java.util.List,com.erp.pojo.Employee" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form method="get" action="CommonEmployeeServlet">
<% List<Employee> emplist=(List)request.getAttribute("elist");
System.out.println(emplist);
System.out.println(request.getAttributeNames());%>
<table align="center"  cellpadding="10" cellspacing="0" style="width:800px">

<% for(int i=0;i<emplist.size();i++)
	{
	System.out.println(emplist.size());
	Employee cust1=emplist.get(i);
	%>
	<tr>
	    <td><%=cust1.getEfname()%></td>
		<td><%=cust1.getElname()%></td>
		
	</tr>				
	<%}%>
</table>
</form>
</body>
</html>