package com.niit.dao;


import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Authorities;
import com.niit.model.Customer;
import com.niit.model.User;

@Repository(value="CustomerDAO")
@Transactional
public class CustomerDAOImple implements CustomerDAO
{
	@Autowired
	SessionFactory sessionfactory;

	public void RegisterCustomer(User user) 
	{
		System.out.println("Entering customer registration");
		
		
		user.setEnabled(true);
		
		
		Authorities authority=new Authorities();
		
		authority.setRole("ROLE_USER");

		user.setAuthorities(authority);
		authority.setUser(user);
		
		sessionfactory.getCurrentSession().save(user);
		//session.saveOrUpdate(user);
		
		System.out.println("Saved");
	}

	public boolean isEmailUnique(String email) 
	{
		Session session=sessionfactory.getCurrentSession();
		User user=(User)session.get(User.class, email);
		if(user==null)
			return true;
		else
			return false;
	}

}
