package controller.book;

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
import model.BookItem;
import model.Category;
import model.Customer;

/**
 * Servlet implementation class Customer
 */
@WebServlet("/")
public class Home extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Home() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		Customer customer = (Customer)session.getAttribute("customer");
		if(customer!=null) {
			System.out.println(customer.getId());
		}
		BookImp bi = new BookImp();
		List<Category> categories = bi.getAllCategory();
		request.setAttribute("categories", categories);
		request.setAttribute("customer", customer);
		List<BookItem> bis = bi.getNewBook();
		request.setAttribute("bis", bis);
		
		List<BookItem> bookCheaps = bi.getCheapBook();
		request.setAttribute("bookCheaps", bookCheaps);
		
		List<BookItem> bookExpensives = bi.getExpensiveBook();
		request.setAttribute("bookExpensives", bookExpensives);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/home/index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
