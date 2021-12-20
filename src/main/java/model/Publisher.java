package model;
import java.util.*;

public class Publisher {

	List<Book> Book;
	private int id;
	private String name;
	private String address;
	
	public Publisher() {
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

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
}