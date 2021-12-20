package model;

public class Book {

	BookItem BookItem;
	Category Category;
	Author Author;
	Publisher Publisher;
	private int id;
	private String title;
	private String description;
	private String numberOfPage;
	private String price;
	
	public Book() {
		// TODO Auto-generated constructor stub
	}

	public BookItem getBookItem() {
		return BookItem;
	}

	public void setBookItem(BookItem bookItem) {
		BookItem = bookItem;
	}

	public Category getCategory() {
		return Category;
	}

	public void setCategory(Category category) {
		Category = category;
	}

	public Author getAuthor() {
		return Author;
	}

	public void setAuthor(Author author) {
		Author = author;
	}

	public Publisher getPublisher() {
		return Publisher;
	}

	public void setPublisher(Publisher publisher) {
		Publisher = publisher;
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

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}
	

}