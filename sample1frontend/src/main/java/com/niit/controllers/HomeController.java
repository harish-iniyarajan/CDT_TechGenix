package com.niit.controllers;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.niit.dao.CartItemDAO;
import com.niit.dao.CategoryDAO;
import com.niit.model.CartItem;

@Controller
public class HomeController 
{
	
	@Autowired
	CategoryDAO categoryDAO;

	@Autowired
	CartItemDAO cartItemDAO;
	
	
	
   @RequestMapping(value="/login")
   public String login(){
	   return "login";
   }
   
   @RequestMapping(value="/loginerror")
   public String failedLogin(Model model) {
	   model.addAttribute("error", "Invalid Credentials");
	   return "login";
   }
   
   @RequestMapping(value="/logout")
   public String logOut(Model model) {
	   model.addAttribute("msg", "Successfully logged out");
	   return "login";
   }
   
   @RequestMapping(value="/home")
   public String home(HttpSession session,@AuthenticationPrincipal Principal principal)
   {
	   System.out.println("Home controller session: "+ session.getId());
	   session.setAttribute("categories", categoryDAO.listCategories());
	   if(principal!=null){
			String email=principal.getName();
			List<CartItem> cartItems=cartItemDAO.getCart(email);
			session.setAttribute("cartSize",cartItems.size());
			session.setAttribute("Name", cartItemDAO.getUser(email).getFirstName());
			}
	   return "home";
   }
   
   @RequestMapping(value="/aboutUs")
   public String aboutUs()
   {
	   return "AboutUs";
   }
}
