package DAO;

import java.util.List;

import org.hibernate.Transaction;
import org.hibernate.query.Query;

import model.Book;
import model.BookItem;
import model.Category;
import model.Customer;

public class BookImp extends DAO implements BookDAO {
	// tao bookitem
	@Override
	public void createBookItem(BookItem b) {
		Transaction trans = session.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        session.save(b.getBook().getAuthor());
        session.save(b.getBook().getPublisher());
        session.save(b.getBook());
        session.save(b);
		trans.commit();
		
	}

	@Override
	public void updateBookItem(BookItem b) {
		Transaction trans = session.getTransaction();
        if (!trans.isActive()) {
            trans.begin();
        }
        session.update(b.getBook().getAuthor());
        session.update(b.getBook().getPublisher());
        session.update(b.getBook());
        session.update(b);
		trans.commit();
	}
	@Override
	public List<Category> getAllCategory() {
		List<Category> result = null;
		Query query = session.createQuery("from Category");
		result = (List<Category>)query.getResultList();
		return result;
	}
	
	@Override
	public BookItem getBookById(int id) {
		BookItem result = null;
		Query query = session.createQuery("from BookItem b where b.id = "+id);
		System.out.print(query.toString());
		result = (BookItem)query.getSingleResult();
		return result;
	}
	
	@Override
	public List<BookItem> getNewBook() {
		List<BookItem> result = null;
		Query query = session.createQuery("from BookItem b order by b.id desc");
		result = (List<BookItem>)query.setMaxResults(5).getResultList();
		return result;
	}
	
	@Override
	public List<BookItem> getCheapBook() {
		List<BookItem> result = null;
		Query query = session.createQuery("from BookItem b where b.priceCurrent < 200000");
		result = (List<BookItem>)query.setMaxResults(5).getResultList();
		return result;
	}
	
	@Override
	public List<BookItem> getExpensiveBook() {
		List<BookItem> result = null;
		Query query = session.createQuery("from BookItem b where b.priceCurrent >= 200000");
		result = (List<BookItem>)query.setMaxResults(5).getResultList();
		return result;
	}
}
