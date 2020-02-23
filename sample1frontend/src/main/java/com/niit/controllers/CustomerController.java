package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CustomerDAO;

import com.niit.model.User;

@Controller
public class CustomerController 
{
	@Autowired
	CustomerDAO customerDAO;
	
	@RequestMapping("/all/ToRegister")
	public String toregister(Model m)
	{
		User user=new User();
		m.addAttribute("user",user);
		return "RegistrationForm";
	}
	
	@RequestMapping("/all/customerRegister")
	public String registerCustomer(@ModelAttribute(name="user") User user, Model model)
	{
		System.out.println("Entered controller");
		customerDAO.RegisterCustomer(user);
		return "login";
	}

}
