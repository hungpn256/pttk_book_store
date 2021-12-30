package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.CustomerImp;
import model.Account;
import model.Address;
import model.Customer;
import model.FullName;

/**
 * Servlet implementation class Register
 */
@WebServlet("/profile")
public class Profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()ssdassadsad
     */
    public Profile() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/profile/index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		Account ac = new Account(username,password);
		
		String lastname = request.getParameter("lastname");
		String firstname = request.getParameter("firstname");
		FullName f = new FullName(firstname,lastname);
		
		String city = request.getParameter("city");
		String district = request.getParameter("district");
		String ward = request.getParameter("ward");
		String detail = request.getParameter("detail");
		Address a = new Address(city,district,ward,detail);
		Customer c = new Customer();
		
		c.setAccount(ac);
		c.setAddress(a);
		c.setFullName(f);
		System.out.println(username+password);
		CustomerImp ci = new CustomerImp();
		
		try {
			ci.createCustomer(c);
			response.sendRedirect(request.getContextPath()+"/login");
		}
		catch (Exception e) {
			response.sendError(401,"Username password không hợp lệ");
		}
	

}

