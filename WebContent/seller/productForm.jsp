<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@include file="html_css.jsp" %>
 <%@ page errorPage="../login_error.jsp" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
<div class="topnav" id="myTopnav">

<a href="index.jsp">Home</a>
<a href="listProducts.jsp">View All Records</a>
<a href="seller_logout.jsp">logout</a>


</div>
<h1>Add New Product</h1>  
<form action="addProduct.jsp" method="post">  
<table id="customers">  
<tr><td>ProductId:</td><td><input type="number" name="productId"/></td></tr>  
<tr><td>ProductName:</td><td><input type="text" name="productName"/></td></tr>  
<tr><td>ProductPrice:</td><td><input type="number" name="productPrice"/></td></tr> 
<tr><td>CategoryId:</td><td><input type="number" name="categoryId"/></td></tr> 
 
 
<tr><td>Units:</td><td><input type="number" name="units"/></td></tr> 
<tr><td>Availability:</td><td><input type="text" name="availability"/></td></tr> 
<tr><td>Size:</td><td><input type="text" name="size"/></td></tr> 

<tr><td>Color:</td><td><input type="text" name="color"/></td></tr> 
<tr><td>SupplierId:</td><td><input type="number" name="supplierId"/></td></tr> 


<tr><td colspan="2"><input type="submit" value="Add Product"/></td></tr>  
</table>  
</form>  

</body>
</html>