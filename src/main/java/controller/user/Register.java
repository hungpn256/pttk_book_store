package controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.user.UserImp;
import model.Account;
import model.Address;
import model.Customer;
import model.FullName;

/**
 * Servlet implementation class Register
 */
@WebServlet("/register")
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()ssdassadsad
     */
    public Register() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/register/index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		Account ac = new Account(username,password);
		
		String lastname = request.getParameter("lastname");
		String firstname = request.getParameter("firstname");
		FullName f = new FullName(firstname,lastname);
		
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		
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
		UserImp ci = new UserImp();
		
		try {
			ci.createCustomer(c);
			response.sendRedirect(request.getContextPath()+"/login");
		}
		catch (Exception e) {
			response.sendError(401,"Username password không hợp lệ");
		}
		
	}

}
