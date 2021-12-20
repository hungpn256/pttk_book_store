package model;
import java.util.*;

public class Author {

	List<Book> Book;
	private int id;
	private String name;
	private String bio;
	
	public Author() {
		// TODO Auto-generated constructor stub
	}

	public List<Book> getBook() {
		return Book;
	}

	public void setBook(List<Book> book) {
		Book = book;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBio() {
		return bio;
	}

	public void setBio(String bio) {
		this.bio = bio;
	}
}