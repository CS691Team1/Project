package com.erpdb.dao;

import java.util.List;

import com.erp.pojo.Employee;

public interface employeedao {
	boolean addEmployee(Employee e);
	boolean updateEmployee(Employee e);
	boolean deleteEmployee(int custid);
	Employee getByemployeeusername(String custusername);
	Employee getById(int custid);
	List<Employee> getAllEmployeer();
}
