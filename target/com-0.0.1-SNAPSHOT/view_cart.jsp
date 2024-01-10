<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="seller/html_css.jsp"%>
<%@ page isELIgnored="false"%>
<%@page import="db_connection.CartDAO,db_connection.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
 <%@ page errorPage="login_error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</head>
<body>





	


	<%
		if ((session.getAttribute("email") == null) || (session.getAttribute("email") == "")) {
	%>
	You are not logged in
	<br />
	<a href="user_sign_in.jsp">Please Login</a>
	<%
		} else {
	%>
	Welcome
	<%=session.getAttribute("email")%>
	<div class="topnav" id="myTopnav">
	<a href="user_logout.jsp">logout</a>
	<a href="user_home.jsp">Home</a>
	<a href="view_orders.jsp">orders</a>
  	<a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
  </div>

	<%
		}
	%>
	


<h1 align="center">Cart Items</h1>



	<%
		List<Cart> list = CartDAO.getAllRecords(session.getAttribute("email").toString());
		request.setAttribute("list", list);
	%>


	<table border="1" id="customers">
		<tr>
			<th>id</th>
			<th>product_name</th>
			<th>product_price</th>
			<th>product_size</th>
			<th>product_color</th>
			<th>quantity</th>
			<th>product_id</th>
			<th>Delete_item</th>
			
		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getId()}</td>
				<td>${u.getProduct_name()}</td>
				<td>${u.getProduct_price()}</td>
				<td>${u.getProduct_size()}</td>
				<td>${u.getProduct_color()}</td>
				<td>${u.getQuantity()}</td>
				<td>${u.getProduct_id()}</td>
				<td><a href="deleteProductFromCart.jsp?id=${u.getId()}">Delete Item</a></td>

			</tr>
		</c:forEach>
	</table>
	<br />
	
	<a href="placeOrder.jsp">Proceed to checkout</a>
	



</body>
</html>