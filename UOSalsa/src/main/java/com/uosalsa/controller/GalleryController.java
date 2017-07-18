package com.uosalsa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;



@Controller
public class GalleryController {
	
	@RequestMapping(value = { "/gallery"}, method = RequestMethod.GET)
	public String gallery(ModelMap model) {
		
		/*List<Employee> employeeList = employeeService.findAll();
		
		model.addAttribute("employees", employeeList);
		for (Employee employee : employeeList)
		{
			System.out.println ("Employee is here:" + employee.toString() );
		}
		
		System.out.println("hjere");*/
		
		return "gallery";
	}
	
	@RequestMapping(value = { "/timelinePhotos"}, method = RequestMethod.GET)
	public String timelinePhotos(ModelMap model) {
		
		return "timelinePhotos";
	}
	
	@RequestMapping(value = { "/coverPhotos"}, method = RequestMethod.GET)
	public String coverPhotos(ModelMap model) {
		
		return "coverPhotos";
	}
	
	@RequestMapping(value = { "/bachataVideos"}, method = RequestMethod.GET)
	public String bachataVideos(ModelMap model) {
		
		return "bachataVideos";
	}
	
	@RequestMapping(value = { "/salsaVideos"}, method = RequestMethod.GET)
	public String salsaVideos(ModelMap model) {
		
		return "salsaVideos";
	}
}
