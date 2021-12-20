package model;
import java.util.*;

public class Payment {

	List<Order> Order;
	private int id;
	private String name;
	private String type;
	
	public Payment() {
		// TODO Auto-generated constructor stub
	}

	public List<Order> getOrder() {
		return Order;
	}

	public void setOrder(List<Order> order) {
		Order = order;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}
}