package model;

import java.sql.Timestamp;

public class CartItem {

	Cart Cart;
	BookItem BookItem;
	private int id;
	private int quantity;
	private float price;
	private Timestamp createdAt;

	public CartItem() {
		// TODO Auto-generated constructor stub
	}

	public Cart getCart() {
		return Cart;
	}

	public void setCart(Cart cart) {
		Cart = cart;
	}

	public BookItem getBookItem() {
		return BookItem;
	}

	public void setBookItem(BookItem bookItem) {
		BookItem = bookItem;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public Timestamp getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}
	
	
}