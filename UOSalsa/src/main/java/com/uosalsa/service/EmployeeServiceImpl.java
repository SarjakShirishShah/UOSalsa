package com.uosalsa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.uosalsa.dao.EmployeeDao;
import com.uosalsa.model.Employee;

@Transactional
@Service("employeeService")
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;
	
	@Override
	public void create(Employee employee){
		employeeDao.create(employee);
	}

	@Override
	public List<Employee> findAll() {
		return employeeDao.findAll();
	}
	
	/*public Employee findById(Long id){		
		return employeeDao.findById(id);
	}
	
	public List<Employee> findAllEmployees() {
		return employeeDao.findAllEmployees();
	}*/
	
}
