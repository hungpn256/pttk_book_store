package DAO.user;

import org.hibernate.query.Query;

import DAO.book.DAO;

import org.hibernate.Transaction;

import model.Account;
import model.Customer;
import model.Staff;

public class UserImp extends DAO implements UserDAO {
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

	@Override
	public Staff staffLogin(Account a) {
		Staff result = null;
		Query query = session.createQuery("from Staff s where s.account.username = '"+a.getUsername()+"' and s.account.password = '"+a.getPassword()+"'");
		result = (Staff)query.getSingleResult();
		return result;
	}

	@Override
	public void createStaff(Staff s) {
		Transaction trans = session.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        
        session.save(s);
        s.getAddress().setUser(s);
        s.getAccount().setUser(s);
        s.getFullName().setUser(s);
		session.save(s.getAddress());
		session.save(s.getAccount());
		session.save(s.getFullName());
		trans.commit();
	}
}
