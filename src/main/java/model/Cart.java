package model;
import java.util.*;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name = "cart")
public class Cart {
	@OneToOne
	@JoinColumn(name = "UserID")
	Customer customer;
	
	@OneToOne
	@JoinColumn(name = "OrderID")
	Ordered ordered;
	
	@OneToMany(mappedBy = "cart")
	List<CartItem> cartItems = new ArrayList<>();
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
	private int id;
	
	@Column(name = "Status")
	private String status;
	
	public Cart() {
		// TODO Auto-generated constructor stub
	}


	public Customer getCustomer() {
		return customer;
	}


	public void setCustomer(Customer customer) {
		this.customer = customer;
	}


	public Ordered getOrder() {
		return ordered;
	}


	public void setOrder(Ordered ordered) {
		this.ordered = ordered;
	}


	public List<CartItem> getCartItems() {
		return cartItems;
	}


	public void setCartItems(List<CartItem> cartItems) {
		this.cartItems = cartItems;
	}


	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	
}