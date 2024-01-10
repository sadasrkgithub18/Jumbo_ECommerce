package db_connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO {

	public static int save(Product u) {
		int status = 0;
		try {
			Connection con = ConnectionProvider.getConnection();
			System.out.println(con);
			PreparedStatement ps = con.prepareStatement(
					"insert into products(id,name,price,category_id,units, availability,size,color,supplier_id)"
							+ " values(?,?,?,?,?,?,?,?,?)");

			ps.setInt(1, u.getProductId());
			ps.setString(2, u.getProductName());
			ps.setInt(3, u.getProductPrice());
			ps.setInt(4, u.getCategoryId());
			ps.setInt(5, u.getUnits());

			ps.setString(6, u.getAvailability());
			ps.setString(7, u.getSize());
			ps.setString(8, u.getColor());

			ps.setInt(9, u.getSupplierId());

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

	public static List<Product> getAllRecords() {
		List<Product> list = new ArrayList<Product>();

		try {
			Connection con = ConnectionProvider.getConnection();
			PreparedStatement ps = con.prepareStatement("select * from products");
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Product u = new Product();
				u.setProductId(rs.getInt("id"));
				u.setProductName(rs.getString("name"));
				u.setProductPrice(rs.getInt("price"));
				u.setCategoryId(rs.getInt("category_id"));
				u.setUnits(rs.getInt("units"));

				u.setAvailability(rs.getString("availability"));
				u.setSize(rs.getString("size"));
				u.setColor(rs.getString("color"));
				u.setSupplierId(rs.getInt("supplier_id"));

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

}
