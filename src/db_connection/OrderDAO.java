package db_connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

public class OrderDAO {

	public static int save(Order u) {

		int status = 0;
		try {
			Connection con = ConnectionProvider.getConnection();
			System.out.println(con);
			PreparedStatement ps = con.prepareStatement(
					"insert into orders(customer_name,mobile,email_id,address,pincode,city,state,order_date,order_status,payment_mode,product_name,quantity,product_price)"
							+ " values(?,?,?,?,?,?,?,?,?,?,?,?,?)");

			ps.setString(1, u.getCustomer_name());
			ps.setString(2, u.getMobile());
			ps.setString(3, u.getEmailId());
			ps.setString(4, u.getAddress());
			ps.setInt(5, u.getPincode());

			ps.setString(6, u.getCity());
			ps.setString(7, u.getState());
			ps.setDate(8, (java.sql.Date) u.getOrderDate());

			ps.setString(9, u.getOrderStatus());
			ps.setString(10, u.getPaymentMode());
			ps.setString(11, u.getProductName());
			ps.setInt(12, u.getQuantity());
			ps.setInt(13, u.getProductPrice());

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

	public static List<Order> getAllRecords(String email) {
		List<Order> list = new ArrayList<Order>();

		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from orders where email_id=?");
			ps.setString(1, email);
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

	public static void setOrders(List<Cart> cart, Customers cs) {

		List<Cart> c = cart;
		Iterator<Cart> itr = c.iterator();

		while (itr.hasNext()) {
			Cart c1 = itr.next();

			Order o = new Order();
			o.setCustomer_name(cs.getCustomer_name());
			o.setMobile(cs.getMobile());
			o.setEmailId(cs.getEmail_id());
			o.setAddress(cs.getAddress());
			o.setPincode(cs.getPincode());
			o.setCity(cs.getCity());
			o.setState(cs.getState());
			o.setOrderDate(getCurrentDatetime());
			o.setOrderStatus("pending");
			o.setPaymentMode("cash");
			o.setProductName(c1.getProduct_name());
			o.setQuantity(c1.getQuantity());
			o.setProductPrice(c1.getProduct_price());
			save(o);

		}

	}

	public static java.sql.Date getCurrentDatetime() {
		java.util.Date today = new java.util.Date();
		return new java.sql.Date(today.getTime());
	}

	public static int calculatePrice(String email) throws SQLException {
		int total_price=0;
		Connection con = ConnectionProvider.getConnection();
		PreparedStatement ps = con.prepareStatement("select * from orders where email_id=?");
		ps.setString(1, email);
		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			
			total_price = total_price+rs.getInt("product_price");

		}
	
	return total_price;
}

}
