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

import DAO.cart.CartImp;
import DAO.order.OrderImp;
import DAO.user.UserDAO;
import DAO.user.UserImp;
import model.Account;
import model.Cart;
import model.CartItem;
import model.Category;
import model.Customer;
import model.Ordered;
import model.Payment;
import model.Shipment;

/**
 * Servlet implementation class Order
 */
@WebServlet("/order")
public class OrderServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()ssdassadsad
     */
    public OrderServlet() {
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
		CartImp ci = new CartImp();
		Cart cart = ci.getCurrentCart(customer);
		double total = 0;
		for(CartItem c: cart.getCartItems()) {
			total += c.getBookItem().getPriceCurrent()*(1-c.getBookItem().getDiscount())*c.getQuantity();
		}
		request.setAttribute("total", total);
		request.setAttribute("cart", cart);
		List<Shipment> shipments = oi.getAllShipment();
		request.setAttribute("shipments", shipments);
		List<Payment> payments = oi.getAllPayment();
		request.setAttribute("payments", payments);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/order/index.jsp");
		dispatcher.forward(request, response);
		}
		else {
			response.sendRedirect(request.getContextPath() + "/login");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Ô");
		HttpSession session = request.getSession();
		Customer customer = (Customer)session.getAttribute("customer");
		Ordered order = new Ordered();
		OrderImp oi = new OrderImp();
		CartImp ci = new CartImp();
		Cart cart = ci.getCurrentCart(customer);
		cart.setOrder(order);
		order.setCart(cart);
		if(request.getParameter("shipment") != null) { 
			int idshipment = Integer.parseInt(request.getParameter("shipment")); 
			order.setShipment(oi.getShipmentById(idshipment));
		}
		if(request.getParameter("payment") != null) { 
			int idpayment = Integer.parseInt(request.getParameter("payment")); 
			order.setPayment(oi.getPaymentById(idpayment));
		} 
		String address = request.getParameter("address"); 
		order.setShipTo(address);
		order.setCustomer(customer);
		String note = request.getParameter("note");
		order.setNote(note);
		cart.setStatus("paid");
		order.setStatus("pending");
		order.setTotal(100);
		try {
			oi.createOrder(order);
			System.out.println(request.getContextPath()+"context");
			response.sendRedirect(request.getContextPath()+"/");
		} catch (Exception e) {
			e.printStackTrace();
			response.sendRedirect(request.getContextPath()+"/order");
		}
	}

}
