package DAO;

import org.hibernate.Transaction;

import model.BookItem;

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

}
