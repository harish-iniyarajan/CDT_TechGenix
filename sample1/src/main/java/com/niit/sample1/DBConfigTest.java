package com.niit.sample1;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class DBConfigTest
{
   public static void main(String ar[])
   {
	   AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
	   context.scan("com.niit");
	   context.refresh();
	   System.out.println("Configured");
   }
}
