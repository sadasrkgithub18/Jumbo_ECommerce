<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<%
	String email = request.getParameter("email");
	out.println("email" + email);
	String password = request.getParameter("password");
	out.println("password" + password);

	final String login_info = "select * from admin_login_info where email='" + email + "'";

	final String Insert_info = "INSERT INTO admin_login_info(login_id,email,password,last_login_date_time,id) VALUES(?,?,?,?,?)";

	final String select_customers = "select * from admin where email='" + email + "' and password='"
			+ password + "'";

	final String SQL_UPDATE = "UPDATE admin_login_info SET last_login_date_time=? WHERE email=?";

	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ecommerce?useSSL=false", "root",
			"password");

	Statement st = con.createStatement();

	ResultSet rs;
	rs = st.executeQuery(select_customers);
	if (rs.next()) {
		session.setAttribute("email", email);
		out.println("welcome" + email);
		out.println("<a href='logout.jsp'>Log out</a>");

		ResultSet rs2 = st.executeQuery(login_info);
		if (rs2.next()) {
			PreparedStatement ps = con.prepareStatement(SQL_UPDATE);
			ps.setTimestamp(1, new Timestamp(System.currentTimeMillis()));
			//ps.setDate(1, new java.sql.Date(new java.util.Date().getTime()));
			ps.setString(2, email);
			int row = ps.executeUpdate();
			System.out.println(new java.sql.Date(new java.util.Date().getTime()));
		} else {
			ResultSet rs1 = st.executeQuery(select_customers);
			PreparedStatement ps = con.prepareStatement(Insert_info);
			if (rs1.next()) {
				ps.setInt(1, rs1.getInt(1));
				ps.setString(2, email);
				ps.setString(3, password);
				//	ps.setDate(4, new java.sql.Date(new java.util.Date().getTime()));
				ps.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
				ps.setInt(5, rs1.getInt(1));
				int row = ps.executeUpdate();
			}

		}

		response.sendRedirect("home.jsp");

	} else {
		out.println("Invalid password <a href='sign_in.jsp'>try again</a>");
	}
%>