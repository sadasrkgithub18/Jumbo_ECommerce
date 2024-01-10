<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="db_connection.CartDAO"%>  
<jsp:useBean id="u" class="db_connection.Cart"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
CartDAO.delete(u);  
out.println(" i am in delete product.jsp");
response.sendRedirect("view_cart.jsp");  
%>  