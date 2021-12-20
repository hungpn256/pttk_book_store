package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;
@Entity
@Table(name = "book")
public class Book {
	@OneToOne
	@JoinColumn(name = "BookItemID")
	BookItem bookItem;
	
	@OneToOne
	@JoinColumn(name = "CategoryID")
	Category category;
	
	@OneToOne
	@JoinColumn(name = "AuthorID")
	Author author;
	
	@OneToOne
	@JoinColumn(name = "PublisherID")
	Publisher publisher;
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
	private int id;
	
	@Column(name = "title")
	private String title;
	
	@Column(name = "description")
	private String description;
	
	@Column(name = "numberOfPage")
	private String numberOfPage;
	
	@Column(name = "price")
	private float price;
	
	public Book() {
		// TODO Auto-generated constructor stub
	}

	public BookItem getBookItem() {
		return bookItem;
	}

	public void setBookItem(BookItem bookItem) {
		this.bookItem = bookItem;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	public Publisher getPublisher() {
		return publisher;
	}

	public void setPublisher(Publisher publisher) {
		this.publisher = publisher;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getNumberOfPage() {
		return numberOfPage;
	}

	public void setNumberOfPage(String numberOfPage) {
		this.numberOfPage = numberOfPage;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

}