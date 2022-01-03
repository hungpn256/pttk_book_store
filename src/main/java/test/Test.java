package test;

import DAO.user.UserImp;
import model.Account;
import model.Address;
import model.Customer;
import model.FullName;
import model.Staff;

public class Test {
	public static void main(String[] args) {
		UserImp cu = new UserImp();
		
		Address a = new Address("HN", "HBT", "PH", "343 tran khat tran");
		FullName name = new FullName("Hung","Pham");
		Account acc = new Account("hung","123");
		Customer c = new Customer();
		
		
		c.setAccount(acc);
		c.setAddress(a);
		c.setFullName(name);
		c.setGender("Nam");
		c.setPhone("123");
		c.setRole("customer");
		
		Staff s = new Staff();
		s.setAccount(acc);
		s.setAddress(a);
		s.setFullName(name);
		s.setPhone("123");
		s.setRole("staff");
		s.setPosition("manager");
		
		cu.createStaff(s);
		
//		cu.createCustomer(c);
//		c.getId();
//		Customer x = cu.customerLogin(acc);
//		x.getFullName().setFirstName("Hungkhungk");
//		cu.editCustomer(x);
//		cu.customerLogin(acc);
	}
}
