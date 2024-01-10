<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
	String username = request.getParameter("username");
	
	String password = request.getParameter("password");
	String firstname = request.getParameter("firstname");
	String lastname = request.getParameter("lastname");
	String gender = request.getParameter("gender");

	String mobile = request.getParameter("mobile");
	String dob = request.getParameter("dob");
	String email = request.getParameter("email");
	String address = request.getParameter("address");
	String landmark = request.getParameter("landmark");

	String city = request.getParameter("city");
	String state = request.getParameter("state");
	String pincode = request.getParameter("pincode");
	
	final String INSERT_USERS_SQL = "INSERT INTO admin" + "(username, password, firstname, lastname, gender,mobile,dob,email,address,landmark,city,state,pincode) VALUES "
			+ " (?, ?, ?, ?, ?,?, ?, ?, ?, ?, ?, ?, ?);";

			Class.forName("com.mysql.jdbc.Driver");
			
	// Step 1: Establishing a Connection
	try (Connection connection = DriverManager
			.getConnection("jdbc:mysql://localhost:3306/ecommerce?useSSL=false", "root", "password");

			// Step 2:Create a statement using connection object
			PreparedStatement ps = connection.prepareStatement(INSERT_USERS_SQL)) {
		ps.setString(1, username);
		ps.setString(2, password);
		ps.setString(3, firstname);
		ps.setString(4, lastname);
		ps.setString(5, gender);
		
		ps.setString(6, mobile);
		ps.setString(7, dob);
		ps.setString(8, email);
		ps.setString(9, address);
		ps.setString(10, landmark);
		
		ps.setString(11, city);
		ps.setString(12, state);
		ps.setString(13, pincode);
	
		

		System.out.println(ps);
		// Step 3: Execute the query or update query
		ps.executeUpdate();
	} catch (SQLException ex) {

		// print SQL exception information
		for (Throwable e : ex) {
			if (e instanceof SQLException) {
				e.printStackTrace(System.err);
				System.err.println("SQLState: " + ((SQLException) e).getSQLState());
				System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
				System.err.println("Message: " + e.getMessage());
				Throwable t = ex.getCause();
				while (t != null) {
					System.out.println("Cause: " + t);
					t = t.getCause();
				}
			}
		}
	}

			out.println("Successfully registered");
			out.println("</br>");
			out.println("email "+email);
			out.println("</br>");
			out.println("password "+password);
			out.println("</br>");
			out.println("<a href='sign_in.jsp'>Log in</a>");
%>
