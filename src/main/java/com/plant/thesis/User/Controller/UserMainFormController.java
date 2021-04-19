package com.plant.thesis.User.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserMainFormController {

	private static final String MODULE_NAME="/User"; 
	
	@RequestMapping(value="/User/UserMainForm", method=RequestMethod.GET)
	public String UserMainForm() {
		return MODULE_NAME+"/UserMainForm";
	}
	
}
