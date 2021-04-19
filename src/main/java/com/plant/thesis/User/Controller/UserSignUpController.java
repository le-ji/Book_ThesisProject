package com.plant.thesis.User.Controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.plant.thesis.User.Model.UserVO;
import com.plant.thesis.User.Service.UserSignUpService;

@Controller
public class UserSignUpController {
	
	
	@Autowired
	private UserSignUpService service;
	
	@RequestMapping(value="/User/userIdCheck", method=RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> UserIdCheck(@RequestParam("thesis_UserId") String thesis_UserId) {
		
		Map<String,Object> result = new HashMap<String, Object>();
		result.put("UserSignIdcheckResult", service.UserSignIdcheck(thesis_UserId));
		return new ResponseEntity<Map<String,Object>>(result,HttpStatus.OK);
	}
	
	@RequestMapping(value="/User/UserSignUpCheck", method=RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> UserRegInsert(UserVO vo,HttpServletRequest request) {

		Map<String,Object> result = new HashMap<String, Object>();
		result.put("UserSignResult", service.UserSignResult(vo));
		return new ResponseEntity<Map<String,Object>>(result,HttpStatus.OK);
	}
	
}
