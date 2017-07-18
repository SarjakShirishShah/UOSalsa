package com.uosalsa.dao;

import java.util.List;

import com.uosalsa.model.Employee;

public interface EmployeeDao {
	public void create(Employee employee);

	public List<Employee> findAll();
	
	/*public Employee findById(Long id);	
	
	public List<Employee> findAllEmployees();*/

}
