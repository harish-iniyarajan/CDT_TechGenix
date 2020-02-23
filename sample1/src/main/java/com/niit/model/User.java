package com.niit.model;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table
public class User 
{
	@Id
	String email;
	//String username;
	boolean Enabled;
	//String CustomerName;
	String Password;
	//String Address;
	String FirstName;
	String LastName;
	String PhoneNumber;
	
	@OneToOne(mappedBy="user",cascade= {CascadeType.ALL})
	Authorities authorities;
	
	@OneToOne(cascade= {CascadeType.ALL})
	//@JoinColumn
	public BillingAddress billingaddress;
	
	@OneToOne(cascade= {CascadeType.ALL})
	public ShippingAddress shippingaddress;

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public boolean isEnabled() {
		return Enabled;
	}

	public void setEnabled(boolean enabled) {
		Enabled = enabled;
	}

	public String getPassword() {
		return Password;
	}

	public void setPassword(String password) {
		Password = password;
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

	public Authorities getAuthorities() {
		return authorities;
	}

	public void setAuthorities(Authorities authorities) {
		this.authorities = authorities;
	}

	public BillingAddress getBillingaddress() {
		return billingaddress;
	}

	public void setBillingaddress(BillingAddress billingaddress) {
		this.billingaddress = billingaddress;
	}

	public ShippingAddress getShippingaddress() {
		return shippingaddress;
	}

	public void setShippingaddress(ShippingAddress shippingaddress) {
		this.shippingaddress = shippingaddress;
	}

	

	

}
