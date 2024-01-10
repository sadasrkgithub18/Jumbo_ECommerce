<%@page import="db_connection.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page isELIgnored="false" %>
<%@include file="html_css.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Products</title>
</head>
<body>

	<%@page import="db_connection.ProductDAO,db_connection.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
	<div class="topnav" id="myTopnav">
<a href="seller_home.jsp">Home</a>
<a href="addProductForm.jsp">Add New Product</a>
<a href="seller_logout.jsp">logout</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
  </div>
  
		

	<h1 align="center">Products List</h1>


	
	

	<%
		List<Product> list = ProductDAO.getAllRecords();
		request.setAttribute("list", list);
	%>


	<table border="1" width="90%"   id="customers">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>price-(Rupees)</th>
			<th>Category_id</th>
			<th>Units</th>
			<th>Availability</th>
			<th>Size</th>
			<th>Color</th>
			<th>Supplier_id</th>
			<th>Edit</th>
			<th>Delete</th>
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
				<td><a href="editProductForm.jsp?id=${u.getProductId()}">Edit</a></td>                   
				<td><a href="deleteProduct.jsp?productId=${u.getProductId()}">Delete</a></td>              
			</tr>
		</c:forEach>
	</table>
	<br />
	

</body>
</html>