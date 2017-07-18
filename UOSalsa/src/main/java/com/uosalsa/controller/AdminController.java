package com.uosalsa.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.uosalsa.model.SignedUpUsers;
import com.uosalsa.service.SignedUpUsersService;

@Controller
public class AdminController {
	
	@Autowired
	private SignedUpUsersService signedUpUsersService;
	
	private UoSalsaMailingService uoSalsaMailingService;
	
	@Autowired
	public void setSecChargeMailingService(
			UoSalsaMailingService uoSalsaMailingService) {
		this.uoSalsaMailingService = uoSalsaMailingService;
	}
	
	@RequestMapping(value = { "/adminContact"}, method = RequestMethod.POST)
	public String adminContact(ModelMap model, 
			@RequestParam(value = "name", required = true) String name,
			@RequestParam(value = "subject", required = true) String subject,
			@RequestParam(value = "comments", required = true) String comments) {	
		System.out.println(name + subject + comments);		
		
		List <SignedUpUsers> signedUpUsers = signedUpUsersService.findAll();
		int count = 0;
		for (SignedUpUsers signedUpUser : signedUpUsers)
		{
			String email = signedUpUser.getEmail();
			uoSalsaMailingService.sendMail(email,
					subject, comments);
			count ++;
		}	
		
		model.addAttribute("finalMessage", "Email has been sent to " + count + " users");
		return "adminPage";
	}
	
	@RequestMapping(value = { "/listAllusers"}, method = RequestMethod.POST)
	public String listAllusers(ModelMap model) {	
		List <SignedUpUsers> signedUpUsers = signedUpUsersService.findAll();
		model.addAttribute("signedUpUsers", signedUpUsers);
		
		return "adminPage";
	}
	
	/* This GET method is just used because I have used "redirect:/listAllusers" in
	LoginController to redirect to the adminPage.jsp */	
	@RequestMapping(value = { "/listAllusers"}, method = RequestMethod.GET)
	public String listAllusers1(ModelMap model) {	
		List <SignedUpUsers> signedUpUsers = signedUpUsersService.findAll();
		model.addAttribute("signedUpUsers", signedUpUsers);
		
		return "adminPage";
	}
	
	
}
