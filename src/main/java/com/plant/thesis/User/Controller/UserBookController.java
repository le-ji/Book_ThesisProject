package com.plant.thesis.User.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserBookController {

	private static final String MODULE_NAME="/User"; 
	
	@RequestMapping(value="/User/UserBookForm", method=RequestMethod.GET)
	public String UserMainForm() {
		return MODULE_NAME+"/UserBookForm";
	}

	
}
