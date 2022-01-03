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
		HttpSession session = request.getSession();
		Customer customer = (Customer)session.getAttribute("customer");
		request.setAttribute("customer", customer);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/profile/index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		Customer customer = (Customer)session.getAttribute("customer");
		
		String passwordOld = request.getParameter("passwordOld");
		String password = request.getParameter("password");
		String repassword = request.getParameter("repassword");
		
		String lastname = request.getParameter("lastname");
		String firstname = request.getParameter("firstname");
		String gender = request.getParameter("gender");
		String phone = request.getParameter("phone");
		
		String city = request.getParameter("city");
		String district = request.getParameter("district");
		String ward = request.getParameter("ward");
		String detail = request.getParameter("detail");
		

		if(passwordOld.length() > 0 ) {
			if(passwordOld.equals(customer.getAccount().getPassword()) &&  password.length() > 0 ) {
				customer.getAccount().setPassword(password);
			}
		}
		customer.getFullName().setFirstName(firstname);
		customer.getFullName().setLastName(lastname);
		customer.getAddress().setCity(city);
		customer.getAddress().setDistrict(district);
		customer.getAddress().setWard(ward);
		customer.getAddress().setDetail(detail);
		customer.setGender(gender);
		customer.setPhone(phone);
		UserImp ci = new UserImp();
		
		try {
			ci.editCustomer(customer);
			response.sendRedirect(request.getContextPath()+"/profile");
		}
		catch (Exception e) {
			e.printStackTrace();
			response.sendError(401,"Username password không hợp lệ");
		}
	
	}
}

