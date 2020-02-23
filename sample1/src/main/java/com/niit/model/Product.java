package com.niit.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Transient;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotEmpty;

import org.springframework.web.multipart.MultipartFile;

@Entity
@Table
public class Product 
{
   @Id
   @GeneratedValue
   int productId;
   
   @NotEmpty(message="Product name is necessary")
   String productName;
   @NotEmpty(message="Product description is necessary")
   String productDesc;
   @Min(value=0,message="Quantity must be >0")
   int quantity;
   @Min(value=1,message="Price must at least be 1")
   double price;
   
   @ManyToOne
   Category category;
   
   @Transient
   MultipartFile image;
   
   String sname;

public int getProductId() {
	return productId;
}

public void setProductId(int productId) {
	this.productId = productId;
}

public String getProductName() {
	return productName;
}

public void setProductName(String productName) {
	this.productName = productName;
}

public String getProductDesc() {
	return productDesc;
}

public void setProductDesc(String productDesc) {
	this.productDesc = productDesc;
}

public int getQuantity() {
	return quantity;
}

public void setQuantity(int quantity) {
	this.quantity = quantity;
}

public double getPrice() {
	return price;
}

public void setPrice(double price) {
	this.price = price;
}

public Category getCategory() {
	return category;
}

public void setCategory(Category category) {
	this.category = category;
}

public MultipartFile getImage() {
	return image;
}

public void setImage(MultipartFile image) {
	this.image = image;
}

public String getSname() {
	return sname;
}

public void setSname(String sname) {
	this.sname = sname;
}


   
   
}
