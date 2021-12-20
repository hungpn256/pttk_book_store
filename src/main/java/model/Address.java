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
@Table(name = "address")
public class Address {
	@OneToOne
	@JoinColumn(name = "UserID")
	User user;
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
	private int id;
	
	@Column(name = "city")
	private String city;
	
	@Column(name = "district")
	private String district;
	
	@Column(name = "ward")
	private String ward;
	
	@Column(name = "detail")
	private String detail;
	
	public Address() {
		// TODO Auto-generated constructor stub
	}
	
	public Address(String city, String district, String ward, String detail) {
		super();
		this.city = city;
		this.district = district;
		this.ward = ward;
		this.detail = detail;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getDistrict() {
		return district;
	}

	public void setDistrict(String district) {
		this.district = district;
	}

	public String getWard() {
		return ward;
	}

	public void setWard(String ward) {
		this.ward = ward;
	}

	public String getDetail() {
		return detail;
	}

	public void setDetail(String detail) {
		this.detail = detail;
	}
	
}