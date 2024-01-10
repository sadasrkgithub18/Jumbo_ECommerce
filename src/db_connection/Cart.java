package db_connection;

public class Cart {
	private int id;
	private String product_name;
	private int product_price;
	private String product_size;
	private String product_color;
	private int quantity;
	private String customer_email;
	private int product_id;
	

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public int getProduct_price() {
		return product_price;
	}

	public void setProduct_price(int product_price) {
		this.product_price = product_price;
	}

	public String getProduct_size() {
		return product_size;
	}

	public void setProduct_size(String product_size) {
		this.product_size = product_size;
	}

	public String getProduct_color() {
		return product_color;
	}

	public void setProduct_color(String product_color) {
		this.product_color = product_color;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public String getCustomer_email() {
		return customer_email;
	}

	public void setCustomer_email(String customer_email) {
		this.customer_email = customer_email;
	}

	public int getProduct_id() {
		return product_id;
	}

	public void setProduct_id(int product_id) {
		this.product_id = product_id;
	}

	@Override
	public String toString() {
		return "Cart [id=" + id + ", product_name=" + product_name + ", product_price=" + product_price
				+ ", product_size=" + product_size + ", product_color=" + product_color + ", quantity=" + quantity
				+ ", customer_email=" + customer_email + ", product_id=" + product_id + "]";
	}

}
