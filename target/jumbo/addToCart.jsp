<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


	<%@page
		import="db_connection.ProductDAO,db_connection.Product,db_connection.Cart,db_connection.CartDAO"%>

	<%
		String id = request.getParameter("id");
		Product u = ProductDAO.getRecordById(Integer.parseInt(id));
		
		
		Cart c = new Cart();
		c.setProduct_name(u.getProductName());
		c.setProduct_price(u.getProductPrice());
		c.setProduct_size(u.getSize());
		c.setProduct_color(u.getColor());
		c.setQuantity(1);
		c.setCustomer_email(session.getAttribute("email").toString());
		c.setProduct_id(u.getProductId());
		
	int i=	CartDAO.save(c);
	

		response.sendRedirect("user_home.jsp");  
		
	%>



</body>
</html>