package com.uosalsa.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.uosalsa.model.Employee;

public interface EmployeeRepository extends JpaRepository<Employee, Long>, CrudRepository <Employee, Long>{
	
	
}
