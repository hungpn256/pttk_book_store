package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BookImp;
import DAO.CustomerDAO;
import DAO.CustomerImp;
import DAO.OrderImp;
import model.Account;
import model.BookItem;
import model.Cart;
import model.CartItem;
import model.Customer;

/**
 * Servlet implementation class Cart
 */
@WebServlet("/cart")
public class CartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()ssdassadsad
     */
    public CartServlet() {
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
		int quantity = 1;
		BookImp bi = new BookImp(); 
		if(customer != null) {
			OrderImp oi = new OrderImp();
			Cart cart = oi.getCurrentCart(customer);
			if(request.getParameter("bookId") != null) { 
				int id = Integer.parseInt(request.getParameter("bookId")); 
				BookItem bookItem = bi.getBookById(id); 
				if(request.getParameter("quantity") != null) { 
					quantity = Integer.parseInt(request.getParameter("quantity")); 
				}
				CartItem ciExist = oi.checkCartExist(id, cart.getId());
				if(ciExist == null) {
					CartItem ci = new CartItem();
					ci.setBookItem(bookItem);
					ci.setQuantity(quantity);
					ci.setCart(cart);
					oi.createCartItem(ci);
					cart.setCartItems(oi.getAllCartItem(cart));
				}else {
					ciExist.setQuantity(ciExist.getQuantity() + 1);
					oi.updateCartItem(ciExist);
					cart.setCartItems(oi.getAllCartItem(cart));
				}
			} else {
				if(request.getParameter("decrease") != null) {
					int id = Integer.parseInt(request.getParameter("decrease")); 
					CartItem cartItem = oi.getCartItemById(id); 
					if(cartItem.getQuantity() > 1) {
						cartItem.setQuantity(cartItem.getQuantity() - 1);
						oi.updateCartItem(cartItem);
						cart.setCartItems(oi.getAllCartItem(cart));
					}else {
						System.out.println("delete");
						oi.deleteCartItem(cartItem);
						cart.getCartItems().remove(cartItem);
					}
				}
			}
			double total = 0;
			for(CartItem c: cart.getCartItems()) {
				total += c.getBookItem().getPriceCurrent()*(1-c.getBookItem().getDiscount())*c.getQuantity();
			}
			request.setAttribute("cart", cart);
			request.setAttribute("total", total);
			RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/cart/index.jsp");
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
		HttpSession session = request.getSession();
		Customer customer = (Customer)session.getAttribute("customer");
		int quantity = 1;
		BookImp bi = new BookImp(); 
		OrderImp oi = new OrderImp();
		if(customer != null) {
			if(request.getParameter("bookId") != null) { 
				int id = Integer.parseInt(request.getParameter("bookId")); 
				BookItem bookItem = bi.getBookById(id); 
				if(request.getParameter("quantity") != null) { 
					quantity = Integer.parseInt(request.getParameter("quantity")); 
				}
				CartItem ci = new CartItem();
				ci.setBookItem(bookItem);
				ci.setQuantity(quantity);
				oi.createCartItem(ci);
				response.sendRedirect("/cart");
			}
		}else {
			response.sendRedirect(request.getContextPath() + "/login");
		}
	}

}
