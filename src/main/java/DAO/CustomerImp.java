package DAO;

import org.hibernate.query.Query;
import org.hibernate.Transaction;

import model.Account;
import model.Customer;

public class CustomerImp extends DAO implements CustomerDAO {
	@Override
	public void createCustomer(Customer c) {
		Transaction trans = session.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        
        session.save(c);
        c.getAddress().setUser(c);
        c.getAccount().setUser(c);
        c.getFullName().setUser(c);
		session.save(c.getAddress());
		session.save(c.getAccount());
		session.save(c.getFullName());
		trans.commit();
	}

	@Override
	public Customer customerLogin(Account a) {
		Customer result = null;
		Query query = session.createQuery("from Customer c where c.account.username = '"+a.getUsername()+"' and c.account.password = '"+a.getPassword()+"'");
		System.out.print(query.toString());
		result = (Customer)query.getSingleResult();
		System.out.println("Cus" + result.getFullName().getFirstName());
		return result;
	}

	@Override
	public void editCustomer(Customer c) {
		Transaction trans = session.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        
        session.update(c);
		session.update(c.getAddress());
		session.update(c.getAccount());
		session.update(c.getFullName());
		trans.commit();
		
	}
}
