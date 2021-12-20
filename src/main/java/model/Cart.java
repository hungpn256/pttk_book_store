package model;
import java.util.*;

public class Cart {

	Customer Customer;
	Order Order;
	List<CartItem> CartItem;
	private int id;
	private String status;
	
	public Cart() {
		// TODO Auto-generated constructor stub
	}

	public Customer getCustomer() {
		return Customer;
	}

	public void setCustomer(Customer customer) {
		Customer = customer;
	}

	public Order getOrder() {
		return Order;
	}

	public void setOrder(Order order) {
		Order = order;
	}

	public List<CartItem> getCartItem() {
		return CartItem;
	}

	public void setCartItem(List<CartItem> cartItem) {
		CartItem = cartItem;
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