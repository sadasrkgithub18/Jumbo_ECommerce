package db_connection;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CustomerDAO {

	public static int save(Order u) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getConnection();
			System.out.println(con);
			PreparedStatement ps = con.prepareStatement(
					"insert into orders(customer_name,mobile,email_id,address,pincode,city,state,order_date,order_status,payment_mode,product_name,quantity)"
							+ " values(?,?,?,?,?,?,?,?,?,?,?,?)");

			ps.setString(1, u.getCustomer_name());
			ps.setString(2, u.getMobile());
			ps.setString(3, u.getEmailId());
			ps.setString(4, u.getAddress());
			ps.setInt(5, u.getPincode());

			ps.setString(6, u.getCity());
			ps.setString(7, u.getState());
			ps.setDate(8, (Date) u.getOrderDate());

			ps.setString(9, u.getOrderStatus());
			ps.setString(10,u.getPaymentMode());
			ps.setString(9, u.getProductName());
			ps.setInt(10,u.getQuantity());
			

			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int update(Product u) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement(
					"update products set id=?,name=?,price=?,category_id=?,units=?,availability=?,size=?,color=?,supplier_id=? where id=?");
			ps.setInt(1, u.getProductId());
			ps.setString(2, u.getProductName());
			ps.setInt(3, u.getProductPrice());
			ps.setInt(4, u.getCategoryId());
			ps.setInt(5, u.getUnits());

			ps.setString(6, u.getAvailability());
			ps.setString(7, u.getSize());
			ps.setString(8, u.getColor());

			ps.setInt(9, u.getSupplierId());

			ps.setInt(10, u.getProductId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

	public static int delete(Product u) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("delete from products where id=?");
			ps.setInt(1, u.getProductId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static Customers getAllRecords(String email) {
		Customers u = new Customers();
		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from customers where email=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			
			if (rs.next()) {
				
				u.setCustomer_name(rs.getString("firstname")+rs.getString("lastname"));
				u.setMobile(rs.getString("mobile"));
				u.setEmail_id(rs.getString("email"));
				u.setAddress(rs.getString("address"));
				u.setPincode(rs.getInt("pincode"));
				u.setCity(rs.getString("city"));
				u.setState(rs.getString("state"));

				
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}

	public static Product getRecordById(int id) {
		Product u = null;
		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from products where id=?");
			ps.setInt(1, id);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				u = new Product();
				u.setProductId(rs.getInt("id"));
				u.setProductName(rs.getString("name"));
				u.setProductPrice(rs.getInt("price"));
				u.setCategoryId(rs.getInt("category_id"));
				u.setUnits(rs.getInt("units"));

				u.setAvailability(rs.getString("availability"));
				u.setSize(rs.getString("size"));
				u.setColor(rs.getString("color"));
				u.setSupplierId(rs.getInt("supplier_id"));
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return u;
	}
	
}
