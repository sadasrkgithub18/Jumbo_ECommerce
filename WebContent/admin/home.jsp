<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@include file="../seller/html_css.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

body {
 background-image: url("${pageContext.request.contextPath}/img/admin.jpg");
 background-color: #cccccc;
background-size:100%;
background-repeat: no-repeat;
width: 100% ;


}

</style>


</head>
<body>

<div class="topnav" id="myTopnav">
  <a href="${pageContext.request.contextPath}/index.jsp" class="active">Main page</a>
   <a href="home.jsp">Home</a>
  <a href="view_all_customers.jsp">view customers</a>
  <a href="view_all_orders.jsp">view orders</a>
  <a href="logout.jsp">logout</a>
  <a href="javascript:void(0);" class="icon" onclick="myFunction()">
    <i class="fa fa-bars"></i>
  </a>
</div>

<div style="padding-left:16px">
  <h2 align="center">Admin console</h2>
</div>


</body>
</html>
