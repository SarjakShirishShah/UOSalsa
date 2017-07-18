package com.uosalsa.service;

import java.util.List;

import com.uosalsa.model.Employee;


public interface EmployeeService {

	public void create(Employee employee);

	public List<Employee> findAll();
	
	/*public Employee findById(Long id);	
	
	public List<Employee> findAllEmployees();*/
	
}
