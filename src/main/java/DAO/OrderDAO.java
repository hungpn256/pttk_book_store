package DAO;

import model.Customer;
import model.Ordered;
import model.Payment;
import model.Shipment;

import java.util.List;

import model.Cart;
import model.CartItem;

public interface OrderDAO {
	public Cart getMyCart(Customer c);
	public void createCartItem(CartItem ci);
	public void updateCartItem(CartItem ci);
	public void deleteCartItem(CartItem ci);
	public List<Ordered> getAllOrder(Customer c);
	public void createOrder(Ordered o);
	public List<Payment> getAllPayment();
	public List<Shipment> getAllShipment();
	public Cart getCurrentCart(Customer c);
	public void createCart(Cart c);
	public CartItem getCartItemById(int id);
	public CartItem checkCartExist(int idBookItem, int idCartItem);
	public List<CartItem> getAllCartItem(Cart c);
	public Shipment getShipmentById(int id);
	public Payment getPaymentById(int id);
}
