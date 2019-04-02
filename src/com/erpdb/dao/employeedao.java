package com.erpdb.dao;

import java.util.List;

import com.erp.pojo.Employee;

public interface employeedao {
	boolean addEmployee(Employee e);
	boolean updateEmployee(Employee e);
	boolean deleteEmployee(String custid);
	Employee getByemployeeusername(String custusername);
	Employee getById(String custid);
	List<Employee> getAllEmployeer();
}
