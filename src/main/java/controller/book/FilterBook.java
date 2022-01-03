package controller.book;

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
		List<BookItem> bookItems = new ArrayList<BookItem>();
		Category category;
		if(request.getParameter("id") != null) {
			int id = Integer.parseInt(request.getParameter("id"));		
			bookItems = bi.getBookByIdCategory(id);
			category = bi.getCategoryById(id);
			request.setAttribute("category", category);
		}else if( request.getParameter("q") != null) {
			String q = request.getParameter("q");
			bookItems = bi.searchByName(q);
		}
		else if(request.getParameter("authorid") != null) {
			int id = Integer.parseInt(request.getParameter("authorid"));	
			bookItems = bi.getBookByIdAuthor(id);
		}else if (request.getParameter("publisherid") != null) {
			int id = Integer.parseInt(request.getParameter("publisherid"));	
			bookItems = bi.getBookByIdPublisher(id);
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
