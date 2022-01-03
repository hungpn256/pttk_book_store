package controller.order;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.book.BookImp;
import DAO.order.OrderImp;
import DAO.user.UserDAO;
import DAO.user.UserImp;
import model.Account;
import model.Author;
import model.Customer;
import model.Ordered;

/**
 * Servlet implementation class OrderHistory
 */
@WebServlet("/orderHistory")
public class OrderHistory extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()ssdassadsad
     */
    public OrderHistory() {
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
		if(customer != null) {
			OrderImp oi = new OrderImp();
			List<Ordered> orders = oi.getAllOrder(customer);
			request.setAttribute("orders", orders);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/orderHistory/index.jsp");
			dispatcher.forward(request, response);
		} else {
			response.sendRedirect(request.getContextPath() + "/login");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
	}

}
