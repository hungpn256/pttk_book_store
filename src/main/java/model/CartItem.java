package model;

import java.sql.Timestamp;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name = "cartitem")
public class CartItem {
	@OneToOne
	@JoinColumn(name = "CartID")
	Cart cart;
	
	@OneToOne
	@JoinColumn(name = "BookItemID")
	BookItem bookItem;
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
	private int id;
	
	@Column(name = "quantity")
	private int quantity;
	
	@Column(name = "price")
	private float price;
	
	@Column(name = "createdAt")
	private Timestamp createdAt;

	public CartItem() {
		// TODO Auto-generated constructor stub
	}

	public Cart getCart() {
		return cart;
	}

	public void setCart(Cart cart) {
		this.cart = cart;
	}

	public BookItem getBookItem() {
		return bookItem;
	}

	public void setBookItem(BookItem bookItem) {
		this.bookItem = bookItem;
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