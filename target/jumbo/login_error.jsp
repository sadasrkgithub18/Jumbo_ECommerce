<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page isErrorPage="true" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
    <title>Error Page</title>
</head>
<body>
<h1>An error has occurred. Please log in again</h1>

<div style="color: #F00;">
    Error message: <%= exception.toString() %>
    
</div>
</body>
</html>