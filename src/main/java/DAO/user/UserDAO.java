package DAO.user;

import model.Account;
import model.Customer;
import model.Staff;

public interface UserDAO {
	public void createCustomer(Customer c);
	public Customer customerLogin(Account a);
	public void editCustomer(Customer c);
	public Staff staffLogin(Account a);
	public void createStaff(Staff s);
}
