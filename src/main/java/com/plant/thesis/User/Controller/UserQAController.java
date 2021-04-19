package com.plant.thesis.User.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserQAController {

	private static final String MODULE_NAME="/User"; 
	
	@RequestMapping(value="/User/UserQ&AForm", method=RequestMethod.GET)
	public String UserQAForm() {
		return MODULE_NAME+"/UserQ&AForm";
	}
	
}
