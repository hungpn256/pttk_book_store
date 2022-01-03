package controller.manager;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.book.BookImp;
import DAO.user.UserDAO;
import DAO.user.UserImp;
import model.Account;
import model.Author;
import model.Book;
import model.BookItem;
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
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		Staff staff = (Staff) session.getAttribute("staff");
		if(staff == null) {
			response.sendRedirect(request.getContextPath()+"/login");
			return;
		}
		request.setAttribute("staff", staff);
		BookImp bi = new BookImp();
		List<Author> authores = bi.getAllAuthor();
		request.setAttribute("authores", authores);

		List<Publisher> publisheres = bi.getAllPublisher();
		request.setAttribute("publisheres", publisheres);

		List<Category> categories = bi.getAllCategory();
		request.setAttribute("categories", categories);

		List<BookItem> bookitems = bi.searchByName("");
		request.setAttribute("bookitems", bookitems);

		RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/productManagerment/index.jsp");
		dispatcher.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html;charset=UTF-8");
		request.setCharacterEncoding("utf-8");
		BookImp bi = new BookImp();
		List<Author> authores = bi.getAllAuthor();
		List<Publisher> publisheres = bi.getAllPublisher();
		List<Category> categories = bi.getAllCategory();
		if (request.getParameter("add_book") != null) {
			String add = request.getParameter("add");
			String title = request.getParameter("title");
			String description = request.getParameter("description");
			String numberOfPage = request.getParameter("numberOfPage");
			float priceImport = Float.parseFloat(request.getParameter("priceImport"));
			float priceCurrent = Float.parseFloat(request.getParameter("priceCurrent"));
			String image = request.getParameter("image");
			float discount = Float.parseFloat(request.getParameter("discount"));
			String author_name = request.getParameter("author_name");
			String bio = request.getParameter("bio");
			String publisher_name = request.getParameter("publisher_name");
			String address = request.getParameter("address");
			int category_id = Integer.parseInt(request.getParameter("category_id"));
			Category category = bi.getCategoryById(category_id);
			BookItem bitem;
			Book b;
			if(request.getParameter("id")!= null) {
				int id = Integer.parseInt(request.getParameter("id"));
				bitem = bi.getBookById(id);
				b = bitem.getBook();
			}
			else {
				bitem = new BookItem();
				b = new Book();
			}
			
			if (!request.getParameter("select_publisher").equals("new")) {
				int id = Integer.parseInt(request.getParameter("select_publisher"));
				b.setPublisher(bi.getPublisherById(id));
			} else {
				Publisher p = new Publisher();
				p.setAddress(address);
				p.setName(publisher_name);
				b.setPublisher(p);
			}
			if (!request.getParameter("select_author").equals("new")) {
				int id = Integer.parseInt(request.getParameter("select_author"));
				b.setAuthor(bi.getAuthorById(id));
			} else {
				Author a = new Author();
				a.setBio(bio);
				a.setName(author_name);
				b.setAuthor(a);
			}
			b.setCategory(category);
			b.setBookItem(bitem);

			b.setDescription(description);
			b.setNumberOfPage(numberOfPage);
			b.setPrice(priceImport);
			b.setTitle(title);

			bitem.setBook(b);
			bitem.setDiscount(discount);
			bitem.setImage(image);
			bitem.setPriceCurrent(priceCurrent);
			if(request.getParameter("id")!= null) {
				bi.updateBookItem(bitem);
			}
			else {
				bi.createBookItem(bitem);
			}
			response.sendRedirect(request.getContextPath() + "/productManagerment");
		} else if (request.getParameter("delete_book") != null) {
			int id = Integer.parseInt(request.getParameter("id"));
			BookItem bitem = bi.getBookById(id);
			bi.deleteBookItem(bitem);
			response.sendRedirect(request.getContextPath() + "/productManagerment");
		} else if (request.getParameter("edit_book") != null) {
			PrintWriter out = response.getWriter();
			int id = Integer.parseInt(request.getParameter("id"));
			BookItem bitem = bi.getBookById(id);
			String optAuthor = "";
			for(Author a:authores) {
				String selected = a.getId() == bitem.getBook().getAuthor().getId() ? "selected" : "";
				optAuthor+="<option "+ selected +" value=\""+a.getId()+"\" >"+a.getName()+"</option>";
			}
			String optPublisher = "";
			for(Publisher p:publisheres) {
				String selected = p.getId() == bitem.getBook().getPublisher().getId() ? "selected" : "";
				optPublisher+="<option "+ selected +" value=\""+p.getId()+"\" >"+p.getName()+"</option>";
			}
			String optCategory = "";
			for(Category c:categories) {
				String selected = c.getId() == bitem.getBook().getCategory().getId() ? "selected" : "";
				optCategory+="<option "+ selected +" value=\""+c.getId()+"\" >"+c.getName()+"</option>";
			}
			
			out.print("<div class=\"modal-header\">\r\n"
					+ "                        <h5 class=\"modal-title\" id=\"exampleModalLabel\">Sửa sách</h5>\r\n"
					+ "                        <button type=\"button\" class=\"close\" data-dismiss=\"modal\" aria-label=\"Close\">\r\n"
					+ "                            <span aria-hidden=\"true\">&times;</span>\r\n"
					+ "                        </button>\r\n" + "                    </div>\r\n"
					+ "                    <div class=\"modal-body\">" + "<form method=\"post\">"
					+ "                            <div class=\"row\">"
					+ "                                <div class=\"col-6\">"
					+ "                                	<input type=\"hidden\" class=\"form-control\" "
					+ "                                            name=\"id\" value=\"" + id + "\">"
					+ "                                    <label for=\"basic-url\">Tên sách</label>"
					+ "                                    <div class=\"input-group mb-3\">"
					+ "                                        <div class=\"input-group-prepend\">"
					+ "                                        </div>"
					+ "                                        <input type=\"text\" class=\"form-control\" aria-describedby=\"basic-addon1\""
					+ "                                            name=\"title\" value=\"" + bitem.getBook().getTitle()
					+ "\">" + "                                    </div>"
					+ "                                    <label for=\"basic-url\">Mô tả</label>"
					+ "                                    <div class=\"input-group mb-3\">"
					+ "                                        <div class=\"input-group-prepend\">"
					+ "                                        </div>"
					+ "                                        <input type=\"text\" class=\"form-control\" aria-describedby=\"basic-addon1\""
					+ "                                            name=\"description\" value=\""
					+ bitem.getBook().getDescription() + "\">" + "                                    </div>"
					+ "                                    <label for=\"basic-url\">Số trang</label>"
					+ "                                    <div class=\"input-group mb-3\">"
					+ "                                        <div class=\"input-group-prepend\">"
					+ "                                        </div>"
					+ "                                        <input type=\"text\" class=\"form-control\" aria-describedby=\"basic-addon1\""
					+ "                                            name=\"numberOfPage\" value=\""
					+ bitem.getBook().getNumberOfPage() + "\">" + "                                    </div>"
					+ "                                    <label for=\"basic-url\">Giá nhập</label>"
					+ "                                    <div class=\"input-group mb-3\">"
					+ "                                        <div class=\"input-group-prepend\">"
					+ "                                        </div>"
					+ "                                        <input type=\"text\" class=\"form-control\" aria-describedby=\"basic-addon1\""
					+ "                                            name=\"priceImport\" value=\""
					+ bitem.getBook().getPrice() + "\">" + "                                    </div>"
					+ "                                    <label for=\"basic-url\">Giá bán</label>"
					+ "                                    <div class=\"input-group mb-3\">"
					+ "                                        <div class=\"input-group-prepend\">"
					+ "                                        </div>"
					+ "                                        <input type=\"text\" class=\"form-control\" aria-describedby=\"basic-addon1\""
					+ "                                            name=\"priceCurrent\" value=\""
					+ bitem.getPriceCurrent() + "\">" + "                                    </div>"
					+ "                                    <label for=\"basic-url\">Ảnh</label>"
					+ "                                    <div class=\"input-group mb-3\">"
					+ "                                        <div class=\"input-group-prepend\">"
					+ "                                        </div>"
					+ "                                        <input type=\"text\" class=\"form-control\" aria-describedby=\"basic-addon1\""
					+ "                                            name=\"image\" value=\"" + bitem.getImage() + "\">"
					+ "                                    </div>"
					+ "                                    <label for=\"basic-url\">Giảm giá</label>"
					+ "                                    <div class=\"input-group mb-3\">"
					+ "                                        <div class=\"input-group-prepend\">"
					+ "                                        </div>"
					+ "                                        <input type=\"text\" class=\"form-control\" aria-describedby=\"basic-addon1\""
					+ "                                            name=\"discount\" value=\"" + bitem.getDiscount()
					+ "\">" + "                                    </div>" + "                                  "
					+ "                                </div>"
					+ "                                <div class=\"col-1\"></div>"
					+ "                                <div class=\"col-5\">"
					+ "                                    <label for=\"basic-url\">Tác giả</label>"
					+ "                                    <select class=\"browser-default custom-select\" name=\"select_author\">"
					+ "									  <option selected value=\"new\">Thêm mới</option>"
					+optAuthor
					+ "									  </select>"
					+ "									<label for=\"basic-url\">Tên</label>"
					+ "                                    <div class=\"input-group mb-3\">"
					+ "                                        <div class=\"input-group-prepend\">"
					+ "                                        </div>"
					+ "                                        <input type=\"text\" class=\"form-control\" aria-describedby=\"basic-addon1\""
					+ "                                            name=\"author_name\" value=\"\">"
					+ "                                    </div>"
					+ "                                    <label for=\"basic-url\">Tiểu sử</label>"
					+ "                                    <div class=\"input-group mb-3\">"
					+ "                                        <div class=\"input-group-prepend\">"
					+ "                                        </div>"
					+ "                                        <input type=\"text\" class=\"form-control\" aria-describedby=\"basic-addon1\""
					+ "                                            name=\"bio\" value=\"\">"
					+ "                                    </div>" + "                                    <hr>"
					+ "                                    <label for=\"basic-url\">Nhà xuất bản</label>"
					+ "                                    <select class=\"browser-default custom-select\" name=\"select_publisher\" >"
					+ "									  <option selected value=\"new\">Thêm mới</option>"
					+optPublisher
					+ "									  </select>"
					+ "									<label for=\"basic-url\">Tên</label>"
					+ "                                    <div class=\"input-group mb-3\">"
					+ "                                        <div class=\"input-group-prepend\">"
					+ "                                        </div>"
					+ "                                        <input type=\"text\" class=\"form-control\" aria-describedby=\"basic-addon1\""
					+ "                                            name=\"publisher_name\" value=\"\">"
					+ "                                    </div>"
					+ "                                    <label for=\"basic-url\">�?ịa chỉ</label>"
					+ "                                    <div class=\"input-group mb-3\">"
					+ "                                        <div class=\"input-group-prepend\">"
					+ "                                        </div>"
					+ "                                        <input type=\"text\" class=\"form-control\" aria-describedby=\"basic-addon1\""
					+ "                                            name=\"address\" value=\"\">"
					+ "                                    </div> "
					+ "                                     <label for=\"basic-url\">Danh mục</label>"
					+ "                                    <select class=\"browser-default custom-select\" name=\"category_id\">"
					+ optCategory
					+ "									 	</select>"
					+ "                                </div>" + "                            </div>"
					+ "                            <button class=\"d-flex ml-auto btn btn-primary\" type=\"submit\" name=\"add_book\">Lưu</button>"
					+ "                        </form>" + "</div>");
		}

	}

}
