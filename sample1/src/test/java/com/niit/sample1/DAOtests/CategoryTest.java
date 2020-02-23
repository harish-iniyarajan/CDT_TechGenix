package com.niit.sample1.DAOtests;

import java.util.Iterator;
import java.util.List;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.CategoryDAO;
import com.niit.dao.CategoryDAOImpl;
import com.niit.model.Category;

import junit.framework.TestCase;

public class CategoryTest extends TestCase {
	public static AnnotationConfigApplicationContext context;
	public static CategoryDAO categoryDao;
	private Category category;

	@BeforeClass
	public static void testInitialize() {
		context = new AnnotationConfigApplicationContext();
		context.scan("com.niit");
		System.out.println("Main Test");
		context.refresh();
		System.out.println("Category");
		categoryDao = (CategoryDAO) context.getBean("CategoryDAO");
	}

	/*
	 * @Test public void testCategory() { category=new Category();
	 * category.setCategoryName("One Plus"); category.setCategoryDesc("All Models");
	 * 
	 * categoryDao.addCategory(category); System.out.println("Success");
	 * 
	 * //assertFalse("Successfully added",categoryDao.addCategory(category)); }
	 */

	/*
	 * @Test public void testget() {
	 * 
	 * category=new Category(); System.out.println("Getting");
	 * category=categoryDao.getCategory(3); //
	 * System.out.println("Name: "+category.getCategoryName());
	 * //System.out.println("Id: "+category.getCategoryId());
	 * assertEquals("Fetched Name","OnePlus",category.getCategoryName());
	 * //assertEquals("Fetched Description","All Models",category.getCategoryDesc())
	 * ;
	 * 
	 * List <Category> cat=(List<Category>) categoryDao.getCategory(3);
	 * System.out.println(category);
	 * 
	 * }
	 */

	/*
	 * @Test public void testUpdate() { category=categoryDao.getCategory(5);
	 * category.setCategoryName("iPhone");; category.setCategoryDesc("Apple");;
	 * categoryDao.updateCategory(category); System.out.println("updated");
	 * //assertEquals("Updated",true,categorydao.updateCategory(category)); }
	 */

	/*
	 * @Test public void testDelete() { category=categoryDao.getCategory(4);
	 * //categorydao.deleteCategory(category);
	 * assertEquals("Deleted",true,categoryDao.deleteCategory(category)); }
	 */

	@Test
	public void testList() {
		List<Category> li = (List<Category>) categoryDao.listCategories();
		System.out.println(li.size());
		// assertEquals("Listed",1,categoryDao.listCategories().size());
	}

}
