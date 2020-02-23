package com.niit.sample1;

import java.util.Properties;

import javax.sql.DataSource;

import org.apache.commons.dbcp2.BasicDataSource;
import org.hibernate.SessionFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate4.HibernateTransactionManager;
import org.springframework.orm.hibernate4.LocalSessionFactoryBuilder;
import org.springframework.transaction.annotation.EnableTransactionManagement;

import com.niit.model.Authorities;
import com.niit.model.BillingAddress;
import com.niit.model.CartItem;
import com.niit.model.Category;
import com.niit.model.Customer;

import com.niit.model.Product;
import com.niit.model.ShippingAddress;
import com.niit.model.Supplier;
import com.niit.model.User;
import com.niit.model.userOrder;


@Configuration
@EnableTransactionManagement
//@ComponentScan("com.niit")
public class DBConfiguration
{
   @Bean(name="dataSource")
   public DataSource getDataSource()
   {
	   System.out.println("Entering");
	   BasicDataSource dataSource=new BasicDataSource();
	   dataSource.setDriverClassName("org.h2.Driver");
	   dataSource.setUrl("jdbc:h2:tcp://localhost/~/test2");
	   dataSource.setUsername("sa");
	   dataSource.setPassword("");
	   System.out.println("DataSourcce bean "+dataSource);
	   return dataSource;
   }
   @Bean 
   public SessionFactory getsessionFactory()
   {
	   System.out.println("Entering sessionFactory creation method");
	   LocalSessionFactoryBuilder lsf=new LocalSessionFactoryBuilder(getDataSource());
	   Properties hibernateProperties=new Properties();
	   hibernateProperties.setProperty("hibernate.dialect", "org.hibernate.dialect.H2Dialect");
	   hibernateProperties.setProperty("hibernate.hbm2ddl.auto", "update");
	   hibernateProperties.setProperty("hibernate.show_sql", "true");
	   
	   lsf.addProperties(hibernateProperties);
	   lsf.addAnnotatedClass(Category.class);
	   lsf.addAnnotatedClass(Product.class);
	   lsf.addAnnotatedClass(Supplier.class);
	   lsf.addAnnotatedClass(User.class);
	   lsf.addAnnotatedClass(Authorities.class);
	   lsf.addAnnotatedClass(BillingAddress.class);
	   lsf.addAnnotatedClass(CartItem.class);
	   lsf.addAnnotatedClass(userOrder.class);
	   lsf.addAnnotatedClass(Supplier.class);
	   lsf.addAnnotatedClass(ShippingAddress.class);
	   System.out.println("sessionFactory bean "+lsf);
	   return lsf.buildSessionFactory();
   }
   @Bean
   public HibernateTransactionManager hibTransManagement()
   {
	   return new HibernateTransactionManager(getsessionFactory());
   }
}
