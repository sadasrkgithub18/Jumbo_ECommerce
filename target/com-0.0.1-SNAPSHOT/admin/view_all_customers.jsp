<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="../seller/html_css.jsp" %>
     <%@ page errorPage="../login_error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


</head>
<body>
	<div class="topnav" id="myTopnav">
	
	</div>

	<%@page
		import="db_connection.Customers,db_connection.Customers,db_connection.AdminDAO,db_connection.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

	<%
		if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
	%>
	You are not logged in
	<br />
	<a href="sign_in.jsp">Please Login</a>
	<%
		} else {
	%>
	Welcome
	<%=session.getAttribute("email")%>
	<div class="topnav" id="myTopnav">
	<a href="home.jsp">Home</a>
	<a href='logout.jsp'>Log out</a>
	</div>
	<%
		}
	%>


<%
		List<Customers> list = AdminDAO.getAllCustomers();
		request.setAttribute("list", list);
	%>
	
	<div id="container">
<div id="row">
	<table border="2" width="90%" id="customers">
		<tr>
			<th>customer_name</th>
			<th>mobile</th>
			<th>email_id</th>
			<th>address</th>
			<th>pincode</th>
			<th>city</th>
			<th>state</th>


		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getCustomer_name()}</td>
				<td>${u.getMobile()}</td>
				<td>${u.getEmail_id()}</td>
				<td>${u.getAddress()}</td>
				<td>${u.getPincode()}</td>
				<td>${u.getCity()}</td>
				<td>${u.getState()}</td>
			
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
	<br />


</body>
</html>