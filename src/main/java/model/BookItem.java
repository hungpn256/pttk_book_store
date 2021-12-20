package model;
import java.util.*;

public class BookItem {

	List<CartItem> CartItem;
	Book Book;
	private int id;
	private String image;
	private float priceCurrent;
	private float discount;
	public BookItem() {
		// TODO Auto-generated constructor stub
	}
	public List<CartItem> getCartItem() {
		return CartItem;
	}
	public void setCartItem(List<CartItem> cartItem) {
		CartItem = cartItem;
	}
	public Book getBook() {
		return Book;
	}
	public void setBook(Book book) {
		Book = book;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public float getPriceCurrent() {
		return priceCurrent;
	}
	public void setPriceCurrent(float priceCurrent) {
		this.priceCurrent = priceCurrent;
	}
	public float getDiscount() {
		return discount;
	}
	public void setDiscount(float discount) {
		this.discount = discount;
	}
	
}