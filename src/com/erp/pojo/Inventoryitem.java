package com.erp.pojo;

import java.util.Date;

public class Inventoryitem {
	
private int itemid;
private String Itemname;
private int itemquantity;
private Date itemshipment;
private int minitemquantity;
private int perdayuse;

@Override
public String toString() {
	return "Inventoryitem [itemid=" + itemid + ", Itemname=" + Itemname + ", itemquantity=" + itemquantity
			+ ", itemshipment=" + itemshipment + ", minitemquantity=" + minitemquantity + ", perdayuse=" + perdayuse
			+ "]";
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
public int getPerdayuse() {
	return perdayuse;
}
public void setPerdayuse(int perdayuse) {
	this.perdayuse = perdayuse;
}



}
