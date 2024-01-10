<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
	<%@page
		import="db_connection.CartDAO,db_connection.Product,db_connection.Cart,db_connection.CartDAO"%>

	<%
		String id = request.getParameter("id");
		int i = CartDAO.removeProductFromCart(Integer.parseInt(id));
		

	out.print("Product added to cart successfully");

		response.sendRedirect("user_home.jsp");  
		out.println();
		out.println("product removed successfully from cart");
		if(i>0){
			out.println("products removed from cart and successfully added to Orders table");
		}
		
		
	%>

</body>
</html>