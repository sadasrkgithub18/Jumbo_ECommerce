<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@include file="../seller/html_css.jsp" %>
       <%@ page errorPage="../login_error.jsp" %>
      
	<%@page
		import="db_connection.Order,db_connection.Customers,db_connection.OrderDAO,db_connection.*,java.util.*"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<a href="home.jsp">Home</a>
	<a href='view_all_customers.jsp'>All users</a>
	<a href='view_all_orders.jsp'>Total orders</a>
	<a href='logout.jsp'>logout</a>
	
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
  </div>

	<%
		}
	%>

<%
		List<Order> list = AdminDAO.getAllRecords();
		request.setAttribute("list", list);
	%>
	
	<div id="container">
<div id="row">
	<table border="1" width="90%" id="customers">
		<tr>
			<th>order_no</th>
			<th>customer_name</th>
			<th>mobile</th>
			<th>email_id</th>
			<th>address</th>
			<th>pincode</th>
			<th>city</th>

			<th>state</th>
			<th>order_date</th>
			<th>order_status</th>
			<th>payment_mode</th>
			<th>product_name</th>
			<th>quantity</th>
			<th>price</th>


		</tr>
		<c:forEach items="${list}" var="u">
			<tr>
				<td>${u.getOrderNo()}</td>
				<td>${u.getCustomer_name()}</td>
				<td>${u.getMobile()}</td>
				<td>${u.getEmailId()}</td>
				<td>${u.getAddress()}</td>
				<td>${u.getPincode()}</td>
				<td>${u.getCity()}</td>

				<td>${u.getState()}</td>
				<td>${u.getOrderDate()}</td>
				<td>${u.getOrderStatus()}</td>
				<td>${u.getPaymentMode()}</td>
				<td>${u.getProductName()}</td>
				<td>${u.getQuantity()}</td>
				<td>${u.getProductPrice()}</td>
			</tr>
		</c:forEach>
	</table>
	</div>
	</div>
	<br />

	
	 
</body>
</html>