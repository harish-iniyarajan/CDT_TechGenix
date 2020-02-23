package com.niit.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.Category;

@Controller
public class CategoryController 
{
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	ProductDAO productDAO;
	
	
	@RequestMapping(value="/insertCategory", method=RequestMethod.POST)
	public String saveCategoryDetail(@ModelAttribute(name="category") Category category, Model m)
	{
		categoryDAO.addCategory(category);
		return "redirect:/all/getallproducts";
	}
	
	@RequestMapping(value="/editCategory/{categoryId}")
	public String editCategory(@PathVariable("categoryId") int categoryId, Model m)
	{
		Category category=categoryDAO.getCategory(categoryId);
		m.addAttribute(category);
		return "updateCategory";
	}
	
	@RequestMapping(value="/deleteCategory/{categoryId}",method=RequestMethod.GET)
	public String deleteCategory(@PathVariable("categoryId") int categid)
	{
		Category category=categoryDAO.getCategory(categid);
		System.out.println("Gets from controller");
		categoryDAO.deleteCategory(category);
		
		return"redirect:/all/getallproducts";
	}
	
	@RequestMapping(value="/updateCategory", method=RequestMethod.POST)
	public String updateCategory(@ModelAttribute(name="category") Category category)
	{
		categoryDAO.updateCategory(category);
		return "redirect:/all/getallproducts";
	}
	
	@RequestMapping(value="/all/searchByCategory")
	public String searchCategory(@RequestParam String searchCondition, Model model)
	{
		if(searchCondition.equals("All"))
			model.addAttribute("productList", productDAO.listProduct());
		else
			model.addAttribute("productList", productDAO.byCategory(searchCondition));
		model.addAttribute("search", searchCondition);
		model.addAttribute("categories", categoryDAO.listCategories());
		return "productList";
	}
	
	@RequestMapping(value="/addCategory")
	public String addCategory(Model model)
	{
		Category category=new Category();
		model.addAttribute("category", category);
		return "category";
	}
}
