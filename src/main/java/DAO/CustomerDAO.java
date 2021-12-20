package DAO;

import model.Account;
import model.Customer;

public interface CustomerDAO {
	public void createCustomer(Customer c);
	public Customer customerLogin(Account a);
	public void editCustomer(Customer c);
}
