package model;
import java.util.*;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name = "customer")
public class Customer extends User {
//	List<Cart> Cart;
//	List<Order> Order;
	
	@Column(name = "memberShip")
	private String memberShip;
	
	@Column(name = "note")
	private String note;
	
	public Customer() {
		super();
	}

//	public List<Cart> getCart() {
//		return Cart;
//	}
//
//	public void setCart(List<Cart> cart) {
//		Cart = cart;
//	}
//
//	public List<Order> getOrder() {
//		return Order;
//	}
//
//	public void setOrder(List<Order> order) {
//		Order = order;
//	}

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