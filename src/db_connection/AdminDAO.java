package db_connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class AdminDAO {
	public static List<Order> getAllRecords() {
		List<Order> list = new ArrayList<Order>();

		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from orders");
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Order u = new Order();
				u.setOrderNo(rs.getInt("order_no"));
				u.setCustomer_name(rs.getString("customer_name"));
				u.setMobile(rs.getString("mobile"));
				u.setEmailId(rs.getString("email_id"));
				u.setAddress(rs.getString("address"));
				u.setPincode(rs.getInt("pincode"));
				u.setCity(rs.getString("city"));
				u.setState(rs.getString("state"));
				u.setOrderDate(rs.getDate("order_date"));
				u.setOrderStatus(rs.getString("order_status"));
				u.setPaymentMode(rs.getString("payment_mode"));
				u.setProductName(rs.getString("product_name"));
				u.setQuantity(rs.getInt("quantity"));
				u.setProductPrice(rs.getInt("product_price"));

				list.add(u);
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return list;
	}
	
	public static List<Customers> getAllCustomers() {
		
		List<Customers> u = new ArrayList<Customers>();
		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from customers");
			ResultSet rs = ps.executeQuery();
			
			while (rs.next()) {
				Customers c = new Customers();
				c.setCustomer_name(rs.getString("firstname")+rs.getString("lastname"));
				c.setMobile(rs.getString("mobile"));
				c.setEmail_id(rs.getString("email"));
				c.setAddress(rs.getString("address"));
				c.setPincode(rs.getInt("pincode"));
				c.setCity(rs.getString("city"));
				c.setState(rs.getString("state"));
				u.add(c);
				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
	
	
}
