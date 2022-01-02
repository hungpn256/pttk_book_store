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
import DAO.CustomerDAO;
import DAO.CustomerImp;
import model.Account;
import model.Author;
import model.Category;
import model.Customer;
import model.Publisher;
import model.Staff;

/**
 * Servlet implementation class ProductManagerment
 */
@WebServlet("/productManagerment")
public class ProductManagerment extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()ssdassadsad
     */
    public ProductManagerment() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		Staff staff = (Staff)session.getAttribute("staff");
		request.setAttribute("staff", staff);
		BookImp bi = new BookImp();
		List<Author> authores = bi.getAllAuthor();
		request.setAttribute("authores", authores);
		List<Publisher> publisheres = bi.getAllPublisher();
		request.setAttribute("publisheres", publisheres);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/productManagerment/index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String add = request.getParameter("add");
		String title = request.getParameter("title");
		String description = request.getParameter("description");
		String numberOfPage = request.getParameter("numberOfPage");
		String priceImport = request.getParameter("priceImport");
		String priceCurrent = request.getParameter("priceCurrent");
		String image = request.getParameter("image");
		String discount = request.getParameter("discount");
		String author_name = request.getParameter("author_name");
		String bio = request.getParameter("bio");
		String publisher_name = request.getParameter("publisher_name");
		String address = request.getParameter("address");

		if(request.getParameter("add_book")!=null) {
			
		}

	}

}
