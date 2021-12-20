package model;
import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name = "customer")
public class Customer extends User {
	@OneToMany(mappedBy = "customer")
	List<Cart> carts;
	
	@OneToMany(mappedBy = "customer")
	List<Order> orders;
	
	@Column(name = "memberShip")
	private String memberShip;
	
	@Column(name = "note")
	private String note;
	
	public Customer() {
		super();
	}
	
	public List<Cart> getCarts() {
		return carts;
	}
	
	public void setCarts(List<Cart> carts) {
		this.carts = carts;
	}
	
	public List<Order> getOrders() {
		return orders;
	}
	
	public void setOrders(List<Order> orders) {
		this.orders = orders;
	}
	
	public String getMemberShip() {
		return memberShip;
	}

	public void setMemberShip(String memberShip) {
		this.memberShip = memberShip;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}
}