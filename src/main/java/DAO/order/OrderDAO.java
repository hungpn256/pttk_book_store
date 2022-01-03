package DAO.order;

import model.Customer;
import model.Ordered;
import model.Payment;
import model.Shipment;

import java.util.List;

import model.Cart;
import model.CartItem;

public interface OrderDAO {
	public List<Ordered> getAllOrder(Customer c);
	public void createOrder(Ordered o);
	public List<Payment> getAllPayment();
	public List<Shipment> getAllShipment();
	public Shipment getShipmentById(int id);
	public Payment getPaymentById(int id);
}
