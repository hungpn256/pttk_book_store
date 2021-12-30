package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.BookImp;
import model.BookItem;
import model.Category;

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
		BookImp bi = new BookImp();
		List<Category> categories = bi.getAllCategory();
		request.setAttribute("categories", categories);
		
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
