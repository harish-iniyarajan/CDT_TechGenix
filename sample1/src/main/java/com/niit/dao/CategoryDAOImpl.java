package com.niit.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import com.niit.model.Category;

@Repository(value="CategoryDAO")
@Transactional
public class CategoryDAOImpl implements CategoryDAO
{
	@Autowired
	SessionFactory sessionFactory;
	
  	public boolean addCategory(Category category) 
	{
		try
		{
			sessionFactory.getCurrentSession().saveOrUpdate(category);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	public boolean deleteCategory(Category category) 
	{
		try
		{
			sessionFactory.getCurrentSession().delete(category);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	public boolean updateCategory(Category category) 
	{
		try
		{
			sessionFactory.getCurrentSession().update(category);
			return true;
		}
		catch(Exception e)
		{
			return false;
		}
	}

	public Category getCategory(int categoryId) 
	{
		Session session=sessionFactory.openSession();
		Category category=(Category)session.get(Category.class, categoryId);
		System.out.println("Gets Category");
		session.close();
		return category;
	}

	public List<Category> listCategories() 
	{
		/*
		 * Session session=sessionFactory.openSession(); Query
		 * query=session.createQuery("from Category"); List<Category>
		 * listcategory=query.list(); session.close();
		 * System.out.println("Datas are ready to list out"); return listcategory;
		 */
		Session session=sessionFactory.openSession();
		List<Category> listCategories=session.createQuery("from Category").list();
		session.close();
		return listCategories;
    }
  
}
