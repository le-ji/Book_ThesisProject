package com.plant.thesis.User.Controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserWritingController {

	private static final String MODULE_NAME="/User"; 
	
	@RequestMapping(value="/User/UserWritingForm", method=RequestMethod.GET)
	public String UserWritingForm() {
		return MODULE_NAME+"/UserWritingForm";
	}
	
}
