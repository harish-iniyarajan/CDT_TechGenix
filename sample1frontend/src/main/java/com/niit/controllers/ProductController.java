package com.niit.controllers;

import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;

import com.niit.dao.CategoryDAO;
import com.niit.dao.ProductDAO;
import com.niit.dao.SupplierDAO;
import com.niit.model.Product;
import com.niit.model.Supplier;

@Controller
public class ProductController 
{
	@Autowired
	ProductDAO productDAO;
	
	@Autowired
	CategoryDAO categoryDAO;
	
	@Autowired
	SupplierDAO supplierDAO;
	
	@RequestMapping(value="/admin/getproductform")
	public String productForm(Model model)
	{
		Product product=new Product();
		model.addAttribute("product",product);
		model.addAttribute("categories", categoryDAO.listCategories());
		model.addAttribute("supplier", supplierDAO.listSuppliers());
		return "productForm";
	}
	
	@RequestMapping(value="/admin/addproduct")
	public String addproduct(@ModelAttribute(name="product") Product product,  BindingResult result, Model model, HttpServletRequest request)
	{
		productDAO.addProduct(product);
		MultipartFile img=product.getImage();
		Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+product.getProductId()+".jpg");
		System.out.println("The path: "+request.getServletContext().getRealPath("/"));
		if(img!=null&&!img.isEmpty())
		{
			try {
				img.transferTo(new File(path.toString()));
			} catch(IllegalStateException e) {
				e.printStackTrace();
			} catch(IOException e)
			{
				e.printStackTrace();
			}
		}
		return "redirect:/all/getallproducts";
	}
	
	@RequestMapping(value="/all/getallproducts")
	public String getallproducts(Model model)
	{
		model.addAttribute("categories", categoryDAO.listCategories());
		model.addAttribute("productList", productDAO.listProduct());
		return "productList";
	}
	
	@RequestMapping(value="/all/getproduct/{productId}")
	public String getproduct(@PathVariable int productId, Model model)
	{
		Product product=productDAO.getProduct(productId);
		model.addAttribute("product", product);
		return "viewProduct";
	}
	
	@RequestMapping(value="/admin/deleteproduct/{productId}")
	public String deleteProduct(@PathVariable int productId, Model model, HttpServletRequest request)
	{
		Product product=productDAO.getProduct(productId);
		productDAO.deleteProduct(product);
		Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+productId+".jpg");
		if(Files.exists(path)){
			try {
				Files.delete(path);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		return "redirect:/all/getallproducts";
	}
	
	@RequestMapping(value="/admin/getupdateform/{productId}")
	public String getupdateform(@PathVariable int productId, Model model)
	{
		Product product=productDAO.getProduct(productId);
		model.addAttribute("product", product);
		model.addAttribute("categories", categoryDAO.listCategories());
		model.addAttribute("supplier", supplierDAO.listSuppliers());
		return "updateForm";
	}
	
	@RequestMapping(value="/admin/updateproduct")
	public String updateproduct(@ModelAttribute Product product, BindingResult result, Model model, HttpServletRequest request)
	{
		productDAO.updateProduct(product);
		MultipartFile img=product.getImage();
		Path path=Paths.get(request.getServletContext().getRealPath("/")+"/WEB-INF/resources/images/"+product.getProductId()+".jpg");
		System.out.println("The path: "+path.toString());
		if(img!=null&&!img.isEmpty())
		{
			try {
				img.transferTo(new File(path.toString()));
			} catch(IllegalStateException e) {
				e.printStackTrace();
			} catch(IOException e)
			{
				e.printStackTrace();
			}
		}
		return "redirect:/all/getallproducts";
	}
}
