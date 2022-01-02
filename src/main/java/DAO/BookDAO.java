package DAO;

import java.util.List;

import model.Author;
import model.Book;
import model.BookItem;
import model.Category;
import model.Publisher;

public interface BookDAO {
	public void createBookItem(BookItem b);
	public void updateBookItem(BookItem b);
	public void deleteBookItem(BookItem b);
	public BookItem getBookById(int id);
	public List<Category> getAllCategory();
	public List<BookItem> getNewBook();
	public List<BookItem> getCheapBook();
	public List<BookItem> getExpensiveBook();
	public List<BookItem> getBookByIdCategory(int id);
	public List<Author> getAllAuthor();
	public List<Publisher> getAllPublisher();
	public Category getCategoryById(int id);
	public Author getAuthorById(int id);
	public Publisher getPublisherById(int id);
	public List<BookItem> searchByName(String s);
	public List<BookItem> getBookByIdAuthor(int id);
	public List<BookItem> getBookByIdPublisher(int id);
}
