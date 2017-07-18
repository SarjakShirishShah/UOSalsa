package com.uosalsa.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class EventsController {
	
	@RequestMapping(value = { "/events"}, method = RequestMethod.GET)
	public String events(ModelMap model) {		
		return "events";
	}
}
