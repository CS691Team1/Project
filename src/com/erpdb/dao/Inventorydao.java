package com.erpdb.dao;

import java.text.ParseException;
import java.util.List;

import com.erp.pojo.Inventoryitem;

public interface Inventorydao {
	boolean additem(Inventoryitem item);
	boolean updateitem(Inventoryitem item);
	boolean deleteitem(int itemid);
	Inventoryitem getById(int itemid);
	List<Inventoryitem> getAllItem() throws ParseException;
}
