package com.plant.thesis.User.Service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.thesis.User.Mapper.UserMapper;
import com.plant.thesis.User.Model.UserVO;

@Service
public class UserLoginService {
	
	public static boolean LoginResult(int UserLoginCount,String thesis_UserID,HttpServletRequest request) {
		if(UserLoginCount == 1) {
			request.getSession().setAttribute("thesis_UserID", thesis_UserID);
			return true;
		}else {
			return false;
		}
	}
	
	@Autowired
	private UserMapper mapper;
	public boolean UserLoginCheck(UserVO vo,HttpServletRequest request) {
		
		return LoginResult(mapper.UserLoginCheck(vo),vo.getThesis_UserId(), request);
	}
	

}
