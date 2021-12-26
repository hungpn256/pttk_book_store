package DAO;

import java.util.List;

import model.Book;
import model.BookItem;

public interface BookDAO {
	public void createBookItem(BookItem b);
	public void updateBookItem(BookItem b);
}
