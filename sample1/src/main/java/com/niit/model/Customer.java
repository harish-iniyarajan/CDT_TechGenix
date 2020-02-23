package com.niit.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Customer")
public class Customer 
{
	@Id
	@GeneratedValue
	int id;
	
	String FirstName;
	String LastName;
	String PhoneNumber;
	
	@OneToOne(cascade= {CascadeType.ALL})
	User user;
	
	//@OneToOne(cascade= {CascadeType.ALL})
	@JoinColumn(name="Billing Id")
	BillingAddress billingaddress;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFirstName() {
		return FirstName;
	}

	public void setFirstName(String firstName) {
		FirstName = firstName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public String getPhoneNumber() {
		return PhoneNumber;
	}

	public void setPhoneNumber(String phoneNumber) {
		PhoneNumber = phoneNumber;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public BillingAddress getBillingaddress() {
		return billingaddress;
	}

	public void setBillingaddress(BillingAddress billingaddress) {
		this.billingaddress = billingaddress;
	}

}
