package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.niit.model.CartItem;
import com.niit.model.User;
import com.niit.model.userOrder;

@Repository
@Transactional
public class CartItemDAOImpl implements CartItemDAO
{
	@Autowired 
	SessionFactory sessionFactory;

	public void addCart(CartItem cartItem) 
	{
		Session session=sessionFactory.getCurrentSession();
		session.saveOrUpdate(cartItem);
	}

	
	public User getUser(String email) 
	{
		Session session=sessionFactory.getCurrentSession();
		User user=(User)session.get(User.class, email);
		return user;
	}

	
	public List<CartItem> getCart(String email) 
	{
		Session session=sessionFactory.getCurrentSession();
		Query query=session.createQuery("from CartItem where user.email=?");
		query.setString(0, email);
		List<CartItem> cartItems=query.list();
		return cartItems;
	}

	
	public void removeCartItem(int cartItemId) 
	{
		Session session=sessionFactory.getCurrentSession();
		CartItem cartItem=(CartItem)session.get(CartItem.class, cartItemId);
		session.delete(cartItem);
	}

	
	public userOrder createOrder(userOrder order)
	{
		Session session=sessionFactory.getCurrentSession();
		session.save(order);
		return order;
	}
	
}
