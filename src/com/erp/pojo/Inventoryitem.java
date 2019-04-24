package com.erp.pojo;

import java.util.Date;

public class Inventoryitem {
	
private int itemid;

private String Itemname;
private int itemquantity;
private Date itemshipment;
private int minitemquantity;
private int purchaseprice;
private int saleprice;
private int perdaysale;



@Override
public String toString() {
	return "Inventoryitem [itemid=" + itemid + ", Itemname=" + Itemname + ", itemquantity=" + itemquantity
			+ ", itemshipment=" + itemshipment + ", minitemquantity=" + minitemquantity + ", purchaseprice="
			+ purchaseprice + ", saleprice=" + saleprice + ", perdaysale=" + perdaysale + "]";
}
public int getItemid() {
	return itemid;
}
public void setItemid(int itemid) {
	this.itemid = itemid;
}
public String getItemname() {
	return Itemname;
}
public void setItemname(String itemname) {
	Itemname = itemname;
}
public int getItemquantity() {
	return itemquantity;
}
public void setItemquantity(int itemquantity) {
	this.itemquantity = itemquantity;
}
public Date getItemshipment() {
	return itemshipment;
}
public void setItemshipment(Date itemshipment) {
	this.itemshipment = itemshipment;
}
public int getMinitemquantity() {
	return minitemquantity;
}
public void setMinitemquantity(int minitemquantity) {
	this.minitemquantity = minitemquantity;
}
public int getPurchaseprice() {
	return purchaseprice;
}
public void setPurchaseprice(int purchaseprice) {
	this.purchaseprice = purchaseprice;
}
public int getSaleprice() {
	return saleprice;
}
public void setSaleprice(int saleprice) {
	this.saleprice = saleprice;
}
public int getPerdaysale() {
	return perdaysale;
}
public void setPerdaysale(int perdaysale) {
	this.perdaysale = perdaysale;
}




}
