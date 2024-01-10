<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@include file="html_css.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>
	<%@page import="db_connection.ProductDAO,db_connection.Product"%>

	<%
		String id = request.getParameter("id");
		Product u = ProductDAO.getRecordById(Integer.parseInt(id));
	%>
<a href="seller_logout.jsp">Log out</a>
	<h1>Edit Product Form</h1>
	<form action="editProduct.jsp" method="post">
		<input type="hidden" name="productId" value="<%=u.getProductId()%>" />
		<table>
			<tr><td>ProductName:</td><td><input type="text" name="productName" value="<%=u.getProductName()%>" /></td></tr>
			<tr><td>ProductPrice:</td><td><input type="text" name="productPrice"value="<%=u.getProductPrice()%>" /></td></tr>

			<tr><td>CategoryId:</td><td><input type="text" name="categoryId" value="<%=u.getCategoryId()%>" /></td></tr>

			<tr><td>Units:</td><td><input type="text" name="units" value="<%=u.getUnits()%>" /></td></tr>
			<tr><td>Availability:</td><td><input type="text" name="availability" value="<%=u.getAvailability()%>" /></td></tr>

			<tr><td>Size:</td><td><input type="text" name="size" value="<%=u.getSize()%>" /></td></tr>

			<tr><td>Color:</td><td><input type="text" name="color" value="<%=u.getColor()%>" /></td></tr>
			
			<tr><td>SupplierId:</td><td><input type="text" name="supplierId" value="<%=u.getSupplierId()%>" /></td></tr>

			<tr><td colspan="2"><input type="submit" value="Edit User" /></td></tr>
		</table>
	</form>

</body>
</html>