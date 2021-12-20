package model;

import java.sql.Timestamp;

public class Order {

	Customer Customer;
	Payment Payment;
	Shipment Shipment;
	Cart Cart;
	private int id;
	private float total;
	private String shipTo;
	private String note;
	private String status;
	private Timestamp createdAt;
	
	public Order() {
		// TODO Auto-generated constructor stub
	}

	public Customer getCustomer() {
		return Customer;
	}

	public void setCustomer(Customer customer) {
		Customer = customer;
	}

	public Payment getPayment() {
		return Payment;
	}

	public void setPayment(Payment payment) {
		Payment = payment;
	}

	public Shipment getShipment() {
		return Shipment;
	}

	public void setShipment(Shipment shipment) {
		Shipment = shipment;
	}

	public Cart getCart() {
		return Cart;
	}

	public void setCart(Cart cart) {
		Cart = cart;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public String getShipTo() {
		return shipTo;
	}

	public void setShipTo(String shipTo) {
		this.shipTo = shipTo;
	}

	public String getNote() {
		return note;
	}

	public void setNote(String note) {
		this.note = note;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public Timestamp getCreatedAt() {
		return createdAt;
	}

	public void setCreatedAt(Timestamp createdAt) {
		this.createdAt = createdAt;
	}
}