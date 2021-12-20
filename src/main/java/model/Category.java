package model;
import java.util.*;

public class Category {

	List<Book> Book;
	private int id;
	private String name;
	private String image;
	
	public Category() {
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

	public String getImage() {
		return image;
	}

	public void setImage(String image) {
		this.image = image;
	}
	
	

}