package controller.cart;

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

import DAO.book.BookImp;
import DAO.cart.CartImp;
import DAO.order.OrderImp;
import DAO.user.UserDAO;
import DAO.user.UserImp;
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
			CartImp cimp = new CartImp();
			Cart cart = cimp.getCurrentCart(customer);
			if(request.getParameter("bookId") != null) { 
				int id = Integer.parseInt(request.getParameter("bookId")); 
				BookItem bookItem = bi.getBookById(id); 
				if(request.getParameter("quantity") != null) { 
					quantity = Integer.parseInt(request.getParameter("quantity")); 
				}
				CartItem ciExist = cimp.checkCartExist(id, cart.getId());
				if(ciExist == null) {
					CartItem ci = new CartItem();
					ci.setBookItem(bookItem);
					ci.setQuantity(quantity);
					ci.setCart(cart);
					cimp.createCartItem(ci);
					cart.setCartItems(cimp.getAllCartItem(cart));
				}else {
					ciExist.setQuantity(ciExist.getQuantity() + 1);
					cimp.updateCartItem(ciExist);
					cart.setCartItems(cimp.getAllCartItem(cart));
				}
			} else if(request.getParameter("deleteCartItem") != null) {
				int id = Integer.parseInt(request.getParameter("deleteCartItem")); 
				CartItem cartItem = cimp.getCartItemById(id);
				cimp.deleteCartItem(cartItem);
				cart.getCartItems().remove(cartItem);
			} else {
				if(request.getParameter("decrease") != null) {
					int id = Integer.parseInt(request.getParameter("decrease")); 
					CartItem cartItem = cimp.getCartItemById(id); 
					if(cartItem.getQuantity() > 1) {
						cartItem.setQuantity(cartItem.getQuantity() - 1);
						cimp.updateCartItem(cartItem);
						cart.setCartItems(cimp.getAllCartItem(cart));
					}else {
						cimp.deleteCartItem(cartItem);
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
		CartImp cimp = new CartImp();
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
				cimp.createCartItem(ci);
				response.sendRedirect("/cart");
			}
		}else {
			response.sendRedirect(request.getContextPath() + "/login");
		}
	}

}
