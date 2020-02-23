package com.niit.dao;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.niit.model.Product;


@Repository(value="ProductDAO")
@Transactional
public class ProductDAOImpl implements ProductDAO
{
    @Autowired
    SessionFactory sessionFactory;
    
	public boolean addProduct(Product product) 
	{
		System.out.println("Add Products");
		try
		{
			System.out.println("Adding");
			sessionFactory.getCurrentSession().saveOrUpdate(product);
			return true;
		}
		catch(Exception e)
		{
			System.out.println("Product exception");
			return false;
		}
	}

	public boolean deleteProduct(Product product)
	{
		try
		{
			sessionFactory.getCurrentSession().delete(product);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	public boolean updateProduct(Product product) 
	{
		try
		{
			sessionFactory.getCurrentSession().update(product);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	public Product getProduct(int productId) 
	{
		Session session=sessionFactory.openSession();
		Product product=(Product)session.get(Product.class, productId);
		System.out.println("Gets product");
		session.close();
		return product;
	}

	public List<Product> listProduct()
	{
		Session session=sessionFactory.openSession();
		List<Product> listProducts=session.createQuery("from Product").list();
		session.close();
		return listProducts;
	}

	@Override
	public List<Product> byCategory(String condition) 
	{
		Session session=sessionFactory.openSession();
		Query query1=session.createQuery("select categoryId from Category where categoryName=?");
		query1.setString(0, condition);
		int cid=(int) query1.uniqueResult();
		System.out.println("Category id is "+cid);
		Query query=session.createQuery("from Product where category.categoryId=?");
		query.setInteger(0, cid);
		List<Product> listByCategory=query.list();
		return listByCategory;
	}
	
}
