package model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.Table;
@Entity
@Table(name = "staff")
public class Staff extends User {
	@JoinColumn(name = "position")
	private String position;
	 
	@JoinColumn(name = "salary")
	private float salary;
	
	public Staff() {
		super();
	}

	public String getPosition() {
		return position;
	}

	public void setPosition(String position) {
		this.position = position;
	}

	public float getSalary() {
		return salary;
	}

	public void setSalary(float salary) {
		this.salary = salary;
	}
}