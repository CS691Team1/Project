package com.erp.pojo;

import java.util.Date;

public class SalesReport {
	Date date;
	String item;
	int quantity;
	int totalItemSale;
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public int getTotalItemSale() {
		return totalItemSale;
	}
	public void setTotalItemSale(int totalItemSale) {
		this.totalItemSale = totalItemSale;
	}
	@Override
	public String toString() {
		return "SalesReport [date=" + date + ", item=" + item + ", quantity=" + quantity + ", totalItemSale="
				+ totalItemSale + "]";
	}
	public SalesReport(Date date, String item, int quantity, int totalItemSale) {
		super();
		this.date = date;
		this.item = item;
		this.quantity = quantity;
		this.totalItemSale = totalItemSale;
	}
	
	
	

}
