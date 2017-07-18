package com.uosalsa.controller;



import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.uosalsa.model.Role;
import com.uosalsa.model.UosalsaUser;
import com.uosalsa.service.EmployeeService;
import com.uosalsa.service.RoleService;
import com.uosalsa.service.UosalsaUserService;

@Controller
public class MyInitController {
	
	@Autowired
	private EmployeeService employeeService;
	
	@Autowired
	private RoleService roleService;
	
	@Autowired
	private UosalsaUserService uosalsaUserService;
	
	@RequestMapping(value = { "/myinit"}, method = RequestMethod.GET)
	public String initialize() {

		System.out.println("Initializing Starts...");
		
		Role role = new Role("AdminHL");
		roleService.create(role);
		
		Role role1 = new Role("Admin");
		roleService.create(role1);
		
		Role userRole = roleService.findByName("AdminHL");
		Long roleId = userRole.getId();
		BCryptPasswordEncoder bc = new BCryptPasswordEncoder();
		String encodedPassword = bc.encode("sarjak");
		UosalsaUser uosalsaUser = new UosalsaUser("Sarjak",encodedPassword, encodedPassword,
				"sarjak.s.shah@gmail.com", roleId);
		uosalsaUserService.create(uosalsaUser);
		return "home";
		/*Employee em = new Employee ();
		em.setName("Sarjak");
		em.setSalary((long) 10000);
		em.setSsn("123456789");
		
		employeeService.create(em);
		
		return "allemployees";*/
		
		
	}
}
