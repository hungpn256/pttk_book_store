package DAO;

import model.Customer;
import model.Order;
import model.Payment;
import model.Shipment;

import java.util.List;

import model.Cart;
import model.CartItem;

public interface OrderDAO {
	public Cart getMyCart(Customer c);
	public void createCartItem(CartItem ci);
	public void updateCartItem(CartItem ci);
	public List<Order> getAllOrder(Customer c);
	public void createOrder(Order o);
	public List<Payment> getAllPayment();
	public List<Shipment> getAllShipment();
}
