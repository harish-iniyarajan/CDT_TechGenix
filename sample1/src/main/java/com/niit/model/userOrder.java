package com.niit.model;

import java.util.Date;

import javax.persistence.CascadeType;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table
public class userOrder {

		@Id
		@GeneratedValue
		int orderId;
		
		Date purchaseDate;
	    double grandTotal;
		
		@ManyToOne(cascade= {CascadeType.ALL})
		User user;

		

		public int getOrderId() {
			return orderId;
		}

		public void setOrderId(int orderId) {
			this.orderId = orderId;
		}

		public Date getPurchaseDate() {
			return purchaseDate;
		}

		public void setPurchaseDate(Date purchaseDate) {
			this.purchaseDate = purchaseDate;
		}

		public double getGrandTotal() {
			return grandTotal;
		}

		public void setGrandTotal(double grandTotal) {
			this.grandTotal = grandTotal;
		}

		public User getUser() {
			return user;
		}

		public void setUser(User user) {
			this.user = user;
		}

	


}
