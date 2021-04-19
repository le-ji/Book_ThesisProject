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

import com.google.gson.JsonObject;
import com.google.gson.JsonParser;
import com.plant.thesis.User.Model.UserVO;
import com.plant.thesis.User.Service.UserLoginService;

@Controller
public class UserLoginController {
	
	
	@Autowired
	private UserLoginService service;
	
	@RequestMapping(value="/", method = RequestMethod.GET)
	public String UserLoginForm() {
		return "/Login&SignUp";
	}
	
	
	@RequestMapping(value="/", method = RequestMethod.POST)
	public ResponseEntity<Map<String, Object>> UserLoginForm(UserVO vo, HttpServletRequest request) {
		Map<String,Object> result = new HashMap<String, Object>();
		result.put("UserloginResult", service.UserLoginCheck(vo, request));
		System.out.println(result.get("UserloginResult"));
		return new ResponseEntity<Map<String, Object>>(result,HttpStatus.OK);
	}
	
	

}
