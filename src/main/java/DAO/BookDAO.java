package DAO;

import java.util.List;

import model.BookItem;
import model.Category;

public interface BookDAO {
	public void createBookItem(BookItem b);
	public void updateBookItem(BookItem b);
	public BookItem getBookById(int id);
	public List<Category> getAllCategory();
}
