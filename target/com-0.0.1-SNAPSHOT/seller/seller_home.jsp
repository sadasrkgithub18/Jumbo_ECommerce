<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="html_css.jsp"%>
 <%@ page errorPage="login_error.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sellers_Home</title>
<style>

body {
 background-image: url("${pageContext.request.contextPath}/img/seller.jpg");
 background-color: #cccccc;
 background-size: 100%;
}

</style>

</head>
<body>

	
	<div class="topnav" id="myTopnav">
		<a href="${pageContext.request.contextPath}/index.jsp">Main page</a>
		<a href="seller_home.jsp" class="link-primary">Home</a> 
		<a href="addProductForm.jsp" class="link-primary">Add Products</a> 
		<a href="listProducts.jsp" class="link-primary">List All Products</a>
		<a href="seller_logout.jsp">logout</a>
		 <a href="javascript:void(0);" class="icon" onclick="myFunction()"> <i class="fa fa-bars"></i>
		</a>
	</div>

<h4 align="center">Sellers View</h4>
</body>
</html>