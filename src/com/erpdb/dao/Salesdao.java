package com.erpdb.dao;

import java.text.ParseException;
import java.util.Date;
import java.util.List;

import com.erp.pojo.Inventoryitem;
import com.erp.pojo.SalesReport;

public interface Salesdao {
	boolean addSalesReport(SalesReport report);
	List<SalesReport> getAllItem() throws ParseException;
	List<SalesReport> getById(String dattee) throws ParseException;
	List<SalesReport> getByMonth(String dattee) throws ParseException;



}
