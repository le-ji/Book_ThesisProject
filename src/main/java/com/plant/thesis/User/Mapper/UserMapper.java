package com.plant.thesis.User.Mapper;

import com.plant.thesis.User.Model.UserVO;

public interface UserMapper {
	
	public Integer UserLoginCheck(UserVO vo);

	public Integer UserSignIdcheck(String thesis_UserId);

	public Integer UserSignUpInsert(UserVO vo);

}
