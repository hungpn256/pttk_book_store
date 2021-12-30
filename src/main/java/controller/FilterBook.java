package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.BookImp;
import model.Author;
import model.BookItem;
import model.Category;
import model.Customer;
import model.Publisher;

/**
 * Servlet implementation class FilterBook
 */
@WebServlet("/filter-book")
public class FilterBook extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public FilterBook() {
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
		BookImp bi = new BookImp();
		List<BookItem> bookItems;
		Category category;
		if(request.getParameter("id") != null) {
			int id = Integer.parseInt(request.getParameter("id"));		
			bookItems = bi.getBookByIdCategory(id);
			category = bi.getCategoryById(id);
			request.setAttribute("category", category);
			bookItems = bi.getBookByIdAuthor(id);
			bookItems = bi.getBookByIdPublisher(id);
		}else {
			String q = request.getParameter("q");
			bookItems = bi.searchByName(q);
		}
		request.setAttribute("bookItems", bookItems);
		List<Category> categories = bi.getAllCategory();
		request.setAttribute("categories", categories);
		
		List<Author> authors = bi.getAllAuthor();
		request.setAttribute("authors", authors);
		
		List<Publisher> publishers = bi.getAllPublisher();
		request.setAttribute("publishers", publishers);
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/filter-book/index.jsp");
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
