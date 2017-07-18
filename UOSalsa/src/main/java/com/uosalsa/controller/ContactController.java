package com.uosalsa.controller;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;



@Controller
public class ContactController {
	
	private UoSalsaMailingService uoSalsaMailingService;

	@Autowired
	public void setSecChargeMailingService(
			UoSalsaMailingService uoSalsaMailingService) {
		this.uoSalsaMailingService = uoSalsaMailingService;
	}
	
	@RequestMapping(value = { "/contact"}, method = RequestMethod.GET)
	public String contact(ModelMap model) {		
		return "contact";
	}
	
	@RequestMapping(value = { "/contactUs"}, method = RequestMethod.POST)
	public String contactInfo(ModelMap model, 
			@RequestParam(value = "name", required = true) String name,
			@RequestParam(value = "email", required = true) String email,
			@RequestParam(value = "comments", required = true) String comments) {	
		System.out.println(name + email + comments);
		model.addAttribute("message", "Hey " + name + ". Thanks!! For contacting UOSalsa.\r\n"
				+ "We will get back to you soon");
		
		
		uoSalsaMailingService.sendMail("uosalsa@gmail.com",
				"QUERY-From Website", comments);
		
		String body = "Hi " + name + ", \r\n";
		body += "Thanks for contacting us! \r\n";
		body += "Please Visit our <a href= www.facebook.com/UOSalsa"
				 + ">Facebook Page</a> for more information\r\n";
		body += "We will get back to you soon. \r\n";
		body += "Keep dancing!! Have fun! \r\n \r\n";
		body += "Regards, \r\n";
		body += "UOSalsa";
		uoSalsaMailingService.sendMail(email,
				"Thanks for contacting UOSalsa", body);
		
		return "contact";
	}
}
