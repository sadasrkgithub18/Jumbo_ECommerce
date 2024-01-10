<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="db_connection.ProductDAO"%>  
<jsp:useBean id="u" class="db_connection.Product"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=ProductDAO.update(u);  
response.sendRedirect("listProducts.jsp");  
%>  