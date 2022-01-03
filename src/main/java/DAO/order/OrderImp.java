package DAO.order;

import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.query.Query;

import DAO.book.DAO;
import model.BookItem;
import model.Cart;
import model.CartItem;
import model.Customer;
import model.Ordered;
import model.Payment;
import model.Shipment;

public class OrderImp extends DAO implements OrderDAO {
	
	@Override
	public List<Ordered> getAllOrder(Customer c) {
		Query query = session.createQuery("from Order o where o.customer.id = "+c.getId());
		return (List<Ordered>)query.getResultList();
	}

	@Override
	public void createOrder(Ordered o) {
		Transaction trans = session.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
		session.save(o);
		session.update(o.getCart());
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
	
	
	@Override
	public Shipment getShipmentById(int id) {
		Query query = session.createQuery("from Shipment where id =  "+id);
		return (Shipment)query.getSingleResult();
	}
	
	@Override
	public Payment getPaymentById(int id) {
		Query query = session.createQuery("from Payment where id =  "+id);
		return (Payment)query.getSingleResult();
	}
}
