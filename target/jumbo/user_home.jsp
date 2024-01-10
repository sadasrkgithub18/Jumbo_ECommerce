<%@page import="db_connection.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@include file="seller/html_css.jsp" %>
 <%@ page errorPage="login_error.jsp" %>
<%@page import="db_connection.ProductDAO,db_connection.CartDAO,db_connection.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>



<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">

</style>
</head>
<body>

<%
    if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
%>
You are not logged in<br/>
<a href="user_sign_in.jsp">Please Login</a>
<%} else {
%>
Welcome <%=session.getAttribute("email")%>
	<div class="topnav" id="myTopnav">
		<a href="user_home.jsp">Home</a>
		<a href='user_logout.jsp'>logout</a>
		<a href="view_cart.jsp">cart</a>
		<a href="view_orders.jsp">orders</a>
	
		</a>
		</div>

<%
    }
%>


	<p style="font-size: 20px; float: right"><i class="bi bi-cart"></i><% out.println(CartDAO.getNoOfItemsInCart(session.getAttribute("email").toString())); %>Items</p>
	

	<h1 align="center">Products List</h1>



	<%
		List<Product> list = ProductDAO.getAllRecords();
		request.setAttribute("list", list);
	%>
	
			


	<table border="1" width="90%"   id="customers">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>price</th>
			<th>Category_id</th>
			<th>Units</th>
			<th>Availability</th>
			<th>Size</th>
			<th>Color</th>
			<th>Supplier_id</th>
			<th>Add item to cart</th>
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getProductId()}</td>
				<td>${u.getProductName()}</td>
				<td>${u.getProductPrice()}</td>
				<td>${u.getCategoryId()}</td>
				<td>${u.getUnits()}</td>
				<td>${u.getAvailability()}</td>
				<td>${u.getSize()}</td>
				<td>${u.getColor()}</td>
				<td>${u.getSupplierId()}</td>
				<td><a href="addToCart.jsp?id=${u.getProductId()}">Add item to cart</a></td>                   
				        
			</tr>
		</c:forEach>
	</table>
	<br />

</body>
</html>