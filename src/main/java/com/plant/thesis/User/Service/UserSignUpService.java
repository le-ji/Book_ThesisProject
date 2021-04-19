package com.plant.thesis.User.Service;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.plant.thesis.User.Mapper.UserMapper;
import com.plant.thesis.User.Model.UserVO;

@Service
public class UserSignUpService {
	
	public static boolean UserSignIdcheckResult(int UserSignIdcheck) {
		if(UserSignIdcheck == 0) {
			return true;
		}else {
			return false;
		}
	}
	
	public static boolean UserSignUpcheckResult(int UserSignUpcheck) {
		if(UserSignUpcheck == 1) {
			return true;
		}else {
			return false;
		}
	}
	

	@Autowired
	private UserMapper mapper;
	
	public boolean UserSignIdcheck(String thesis_UserId) {
		
		return UserSignIdcheckResult(mapper.UserSignIdcheck(thesis_UserId));
	}

	public boolean UserSignResult(UserVO vo) {
		// TODO Auto-generated method stub
		return UserSignUpcheckResult(mapper.UserSignUpInsert(vo));
	}

}
