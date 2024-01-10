package db_connection;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class CartDAO {
	public static int save(Cart u) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getConnection();
			System.out.println(con);
			PreparedStatement ps = con.prepareStatement(
					"insert into cart(product_name,product_price,product_size,product_color,quantity,customer_email,product_id)"
							+ " values(?,?,?,?,?,?,?)");

			ps.setString(1, u.getProduct_name());
			ps.setInt(2, u.getProduct_price());
			ps.setString(3, u.getProduct_size());
			ps.setString(4, u.getProduct_color());

			ps.setInt(5, u.getQuantity());
			ps.setString(6, u.getCustomer_email());
			ps.setInt(7, u.getProduct_id());

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

	public static int delete(Cart u) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("delete from cart where id=?");
			ps.setInt(1, u.getId());
			status = ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}

		return status;
	}

	public static List<Cart> getAllRecords(String email) {
		List<Cart> list = new ArrayList<Cart>();
		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from cart where customer_email=?");
			ps.setString(1, email);

			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Cart u = new Cart();
				u.setId(rs.getInt("id"));
				u.setProduct_name(rs.getString("product_name"));
				u.setProduct_price(rs.getInt("product_price"));
				u.setProduct_size(rs.getString("product_size"));
				u.setProduct_color(rs.getString("product_color"));

				u.setQuantity(rs.getInt("quantity"));
				u.setProduct_id(rs.getInt("product_id"));
				System.out.println(" I am in while loop of Cart");
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

	public static int emptyCart(String email) {
		int i = 0;
		Product u = null;
		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("delete  from cart where customer_email=?");
			ps.setString(1, email);
			i= ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}
	
	public static int removeProductFromCart(int id) {
		int i = 0;
		Product u = null;
		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("delete  from cart where id=?");
			ps.setInt(1, id);
			i= ps.executeUpdate();
		} catch (Exception e) {
			System.out.println(e);
		}
		return i;
	}
	
	public static int getNoOfItemsInCart(String email) {
		int items=0;
		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from cart where customer_email=?");
			ps.setString(1, email);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				items=items+1;
			}
		} catch (Exception e) {
			System.out.println(e);
		}
		return items;
	}	

}
