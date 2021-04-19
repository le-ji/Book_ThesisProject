package com.plant.thesis.User.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserProjectController {
	
	private static final String MODULE_NAME="/User"; 
	
	@RequestMapping(value="/User/UserProjectForm", method=RequestMethod.GET)
	public String UserProjectForm() {
		return MODULE_NAME+"/UserProjectForm";
	}
}
