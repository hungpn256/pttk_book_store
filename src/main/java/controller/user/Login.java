package controller.user;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.user.UserDAO;
import DAO.user.UserImp;
import model.Account;
import model.Customer;
import model.Staff;

/**
 * Servlet implementation class Login
 */
@WebServlet("/login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()ssdassadsad
     */
    public Login() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		session.removeAttribute("customer");
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/login/index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		System.out.println(username+password);
		UserImp ci = new UserImp();
		boolean login = false;
		try {
			
			Customer customer = ci.customerLogin(new Account(username, password));
			System.out.println(customer.getId()+"idd");
			login = true;
			session.setAttribute("customer", customer);
			response.sendRedirect(request.getContextPath()+"/home");
		}
		catch (Exception e) {
			e.printStackTrace();
		}
		
		try {
			Staff staff = ci.staffLogin(new Account(username, password));
			session.setAttribute("staff", staff);
			login = true;
			response.sendRedirect(request.getContextPath()+"/productManagerment");
			
		}catch (Exception e) {
			e.printStackTrace();
		}
		
		if(!login) {
			response.sendError(401,"Username password kh??ng h???p l???");
		}
		
		
	}

}
