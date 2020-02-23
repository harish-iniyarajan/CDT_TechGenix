package com.niit.dao;

import java.util.List;

import com.niit.model.CartItem;
import com.niit.model.User;
import com.niit.model.userOrder;

public interface CartItemDAO {
	void addCart(CartItem cartItem);
	User getUser(String email);
	List<CartItem> getCart(String email);
	void removeCartItem(int cartItemId);
	userOrder createOrder(userOrder order);
}
