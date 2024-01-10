<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="seller/html_css.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E commerce application</title>
<style>
body{
background-color:lightblue;
}
img {
	width: 100%;
	height: 100%;
}
</style>
</head>
<body>
<div class="topnav" id="myTopnav">
  <a href="user_sign_in.jsp" class="active">User Login</a>
  <a href="seller/seller_sign_in.jsp">Seller Login</a>
  <a href="admin/sign_in.jsp">Admin Login</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

	<div class="container">
		<h2>Jumbo E-commerce</h2>
		<p class="ptext">Where every need meets</p>
		<img src="${pageContext.request.contextPath}/img/Jumbo.jpg"
			class="img-rounded" alt="E-commerce logo">

	</div>

</body>
</html>