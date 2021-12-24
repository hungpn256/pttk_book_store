package test;

import DAO.CustomerImp;
import model.Account;
import model.Address;
import model.Customer;
import model.FullName;

public class Test {
	public static void main(String[] args) {
		CustomerImp cu = new CustomerImp();
		
		Address a = new Address("HN", "HBT", "PH", "343 tran khat tran");
		FullName name = new FullName("Hung","Pham");
		Account acc = new Account("hungpn","123");
		Customer c = new Customer();
		c.setAccount(acc);
		c.setAddress(a);
		c.setFullName(name);
		c.setGender("Nam");
		c.setPhone("123");
		c.setRole("customer");
		
		cu.createCustomer(c);
		c.getId();
		Customer x = cu.customerLogin(acc);
		x.getFullName().setFirstName("Hungkhungk");
		cu.editCustomer(x);
		cu.customerLogin(acc);
	}
}
