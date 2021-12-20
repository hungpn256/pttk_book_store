package model;
import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name = "bookitem")
public class BookItem {
	@OneToMany(mappedBy = "bookItem")
	List<CartItem> cartItems;
	
	@OneToOne(mappedBy = "bookItem")
	Book book;
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
	private int id;
	
	@Column(name = "image")
	private String image;
	
	@Column(name = "priceCurrent")
	private float priceCurrent;
	
	@Column(name = "discount")
	private float discount;
	
	public BookItem() {
		// TODO Auto-generated constructor stub
	}
	public List<CartItem> getCartItem() {
		return cartItems;
	}
	public void setCartItem(List<CartItem> cartItem) {
		this.cartItems = cartItem;
	}
	public Book getBook() {
		return book;
	}
	public void setBook(Book book) {
		this.book = book;
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