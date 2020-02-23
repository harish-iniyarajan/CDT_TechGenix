package com.niit.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.SupplierDAO;
import com.niit.model.Supplier;

@Controller
public class SupplierController 
{
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping(value="/supplier/getsupplierform")
	public String getsupplierform(Model model)
	{
		Supplier supplier=new Supplier();
		model.addAttribute("supplier", supplier);
		return "supplierForm";
	}
	
	@RequestMapping(value="/supplier/addsupplier")
	public String addsupplier(@ModelAttribute(name="supplier") Supplier supplier, Model model)
	{
		supplierDAO.addSupplier(supplier);
		return "home";
	}
}
