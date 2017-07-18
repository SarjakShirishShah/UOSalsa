package com.uosalsa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uosalsa.model.Employee;
import com.uosalsa.service.EmployeeService;



@Controller
public class HomeController {
	
	@Autowired
	EmployeeService employeeService;
	
	@RequestMapping(value = { "/", "/home"}, method = RequestMethod.GET)
	public String homePage(ModelMap model) {		
		return "home";
	}
	
	
	@RequestMapping(value = { "/list"}, method = RequestMethod.GET)
	public String listEmployees(ModelMap model) {
		
		List<Employee> employeeList = employeeService.findAll();
		
		model.addAttribute("employees", employeeList);
		for (Employee employee : employeeList)
		{
			System.out.println ("Employee is here:" + employee.toString() );
		}
		
		System.out.println("hjere");
		
		return "allemployees";
	}
	
	@RequestMapping(value = {"/extras"}, method = RequestMethod.GET)
	public String extras(ModelMap model) {		
		return "extras";
	}
	
}
