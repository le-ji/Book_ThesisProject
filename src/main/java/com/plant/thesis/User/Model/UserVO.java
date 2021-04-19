package com.plant.thesis.User.Model;

import lombok.Data;

@Data
public class UserVO {
	private String thesis_UserId; // 회원 아이디(Email 형식)
	private String thesis_UserPw; // 회원 비밀번호
	private String thesis_UserName; // 회원 이름
	private String thesis_UserPhone; // 회원 휴대전화
}
