package DAO;

import java.util.List;

import org.hibernate.Transaction;
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
		Query query = session.createQuery("from Order o where c.customer.id = "+c.getId());
		return (Cart)query.getSingleResult();
	}

	@Override
	public void createCartItem(CartItem ci) {
		Transaction trans = session.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
		session.save(ci);
		trans.commit();
		
	}

	@Override
	public void updateCartItem(CartItem ci) {
		Transaction trans = session.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
		session.update(ci);
		trans.commit();
		
	}

	@Override
	public List<Order> getAllOrder(Customer c) {
		Query query = session.createQuery("from Order o where o.customer.id = "+c.getId());
		return (List<Order>)query.getResultList();
	}

	@Override
	public void createOrder(Order o) {
		Transaction trans = session.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
		session.save(o);
		trans.commit();
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
