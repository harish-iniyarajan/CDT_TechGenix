package com.niit.dao;

import com.niit.model.Customer;
import com.niit.model.User;

public interface CustomerDAO 
{
	void RegisterCustomer(User user);
	boolean isEmailUnique(String email);
}
