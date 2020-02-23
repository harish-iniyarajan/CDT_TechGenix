package com.niit.sample1.DAOtests;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.niit.dao.ProductDAO;
import com.niit.model.Product;

import junit.framework.TestCase;

public class ProductTest extends TestCase
{
   public static AnnotationConfigApplicationContext context;
   public static ProductDAO productDAO;
   private Product product;
   
   @BeforeClass
   public static void testInitialize()
   {
	   context=new AnnotationConfigApplicationContext();
	   context.scan("com.niit");
	   System.out.println("Main Test");
	   context.refresh();
	   System.out.println("Product");
	   productDAO=(ProductDAO)context.getBean("ProductDAO");
   }
   
	/*
	 * @Test public void testproduct() { product=new Product();
	 * product.setProductName("Apple"); product.setProductDesc("iPhone 11 Pro Max");
	 * System.out.println("Test product"); productDAO.addProduct(product);
	 * System.out.println("Success"); //assertTrue("Successfully added",
	 * productDAO.addProduct(product)); }
	 */
   @Test
   public void testget()
   {
	   product=new Product();
	   product=productDAO.getProduct(3);
	   System.out.println("Exiting getProduct()");
	   System.out.println(product.getProductName()+" "+product.getProductDesc());
	   
   }
}
