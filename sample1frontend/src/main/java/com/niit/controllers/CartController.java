package com.niit.controllers;

import java.security.Principal;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.niit.dao.CartItemDAO;
import com.niit.dao.ProductDAO;
import com.niit.model.CartItem;
import com.niit.model.Product;
import com.niit.model.ShippingAddress;
import com.niit.model.User;
import com.niit.model.userOrder;

@Controller
public class CartController {

	@Autowired
	CartItemDAO cartitemDAO;
	
	@Autowired
	ProductDAO productDAO;

	@RequestMapping(value="/cart/addtocart/{productId}")
	public String addtocart(@PathVariable int productId, @RequestParam int requestedQuantity, @AuthenticationPrincipal Principal principal) 
	{
		if(principal==null)
			return "login";
		String email=principal.getName();
		Product product=productDAO.getProduct(productId);
		User user=cartitemDAO.getUser(email);
		if(requestedQuantity>product.getQuantity())
			requestedQuantity=product.getQuantity();
		List<CartItem> cartItems=cartitemDAO.getCart(email);
		for(CartItem cartItem:cartItems){
			if(cartItem.getProduct().getProductId()==productId){
				cartItem.setQuantity(requestedQuantity);
				cartItem.setTotalprice(requestedQuantity*product.getPrice());
				cartitemDAO.addCart(cartItem);
				return "redirect:/cart/getcart";
			}
		}
		
		CartItem cartItem=new CartItem();
		cartItem.setQuantity(requestedQuantity);
        cartItem.setProduct(product);
        cartItem.setUser(user);
        double totalPrice=requestedQuantity *product.getPrice();
        cartItem.setTotalprice(totalPrice);
        cartitemDAO.addCart(cartItem);
    	return "redirect:/cart/getcart";
	}
	
	@RequestMapping(value="/cart/getcart")
	public String getcart(@AuthenticationPrincipal Principal principal, Model model, HttpSession session) 
	{
		if(principal==null)
			return "login";
		String email=principal.getName();
		List<CartItem> cartItems=cartitemDAO.getCart(email);
		model.addAttribute("cartItems", cartItems);
		session.setAttribute("cartSize", cartItems.size());
		return "cart";
	}
	
	@RequestMapping(value="/cart/removecartitem/{cartItemId}")
    public String removeCartItem(@PathVariable int cartItemId){
    	cartitemDAO.removeCartItem(cartItemId);
    	return "redirect:/cart/getcart";
    }
	
	@RequestMapping(value="/cart/shippingaddressform")
	public String shippingaddressform(@AuthenticationPrincipal Principal principal, Model model)
	{
		if(principal==null)
			return "login";
		ShippingAddress shippingAddress=new ShippingAddress();
		model.addAttribute("shippingAddress", shippingAddress);
		return "shippingaddress";
	}
	
	@RequestMapping(value="/cart/createorder")
	public String createorder(@ModelAttribute(name="shippingAddress") ShippingAddress shippingAddress, Model model, @AuthenticationPrincipal Principal principal, HttpSession session)
	{ 
		
		if(principal==null)
			return "login";
		String email=principal.getName();
		User user=cartitemDAO.getUser(email);
		List<CartItem> cartItems=cartitemDAO.getCart(email);
		user.setShippingaddress(shippingAddress);
		
		double grandTotal=0;
		
		for(CartItem cartItem:cartItems)
		  grandTotal=grandTotal+cartItem.getTotalprice();
		grandTotal=1.14*grandTotal;
		
		userOrder customerOrder=new userOrder();
		customerOrder.setPurchaseDate(new Date());
		customerOrder.setUser(user);
		customerOrder.setGrandTotal(grandTotal);
		if(cartItems.size()>0)
			customerOrder=cartitemDAO.createOrder(customerOrder);
		
		for(CartItem cartItem:cartItems)
		{
			Product product=cartItem.getProduct();
			product.setQuantity(product.getQuantity()-cartItem.getQuantity());
			productDAO.updateProduct(product);
			cartitemDAO.removeCartItem(cartItem.getCartItemId());
		}
		
		model.addAttribute("cartItems", cartItems);
		model.addAttribute("customerOrder", customerOrder);
		session.setAttribute("cartSize", 0);
	
		return "orderSummary";
	}
	
	@RequestMapping(value="/cart/paymentportal")
	public String paymentportal()
	{
		return "paymentPortal";
	}
}
