package DAO.cart;

import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.query.Query;

import DAO.book.DAO;
import model.Cart;
import model.CartItem;
import model.Customer;

public class CartImp extends DAO implements CartDAO {
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
	public void createCart(Cart c) {
		Transaction trans = session.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
		session.save(c);
		trans.commit();
		
	}
	@Override
	public void updateCartItem(CartItem ci) {
		Transaction trans = session.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        session.clear();
		session.update(ci);
		trans.commit();
		
	}
	
	@Override
	public Cart getCurrentCart(Customer c) {
		System.out.println(c.getId()+"id user");
		Query query = session.createQuery("from Cart c where c.customer.id = " + c.getId()+" and c.status = 'using'");
		List<Cart> carts = (List<Cart>)query.getResultList();
		if(carts.size() == 0) {
			Cart newCart = new Cart();
			newCart.setCustomer(c);
			newCart.setStatus("using");
			createCart(newCart);
			return newCart;
		}
		return carts.get(0);
	}

	@Override
	public CartItem getCartItemById(int id) {
		Query query = session.createQuery("from CartItem where id =  "+id);
		return (CartItem)query.getSingleResult();
	}

	@Override
	public void deleteCartItem(CartItem ci) {
		Transaction trans = session.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
		session.delete(ci);
		trans.commit();
		
	}

	@Override
	public CartItem checkCartExist(int idBookItem, int idCartItem) {
		Query query = session.createQuery("from CartItem c where c.bookItem.id = " + idBookItem + " and c.cart.id = " + idCartItem);
		List<CartItem> cis = (List<CartItem>)query.getResultList();
		if(cis.size() > 0) {
			return cis.get(0);
		}
		return null;
	}

	@Override
	public List<CartItem> getAllCartItem(Cart c) {
		Query query = session.createQuery("from CartItem c where  c.cart.id = " + c.getId());
		List<CartItem> cis = (List<CartItem>)query.getResultList();
		return cis;
	}

}
