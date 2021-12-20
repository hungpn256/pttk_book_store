package DAO;

import java.util.List;

import org.hibernate.query.Query;

import model.Cart;
import model.CartItem;
import model.Customer;
import model.Order;
import model.Payment;
import model.Shipment;

public class OrderImp extends DAO implements OrderDAO {

	@Override
	public Cart getMyCart(Customer c) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void createCartItem(CartItem ci) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void updateCartItem(CartItem ci) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Order> getAllOrder(Customer c) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public void createOrder(Order o) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public List<Payment> getAllPayment() {
		Query query = session.createQuery("from Payment");
		return (List<Payment>)query.getResultList();
	}

	@Override
	public List<Shipment> getAllShipment() {
		Query query = session.createQuery("from Shipment");
		return (List<Shipment>)query.getResultList();
	}

}
