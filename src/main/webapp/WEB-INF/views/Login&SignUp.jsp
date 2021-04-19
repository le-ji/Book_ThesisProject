<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/css/views/User/UserLogin.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<title>Thesis&Book</title>
</head>

<body>
	<div class="box">
		<div class="page">
			<div class="header">
				<a id="login" class="active" href="#login">login</a> <a id="signup"
					href="#signup">signup</a>
			</div>
			<div class="content">
				<form class="login" name="loginForm">			
					<input type="text" id="Login_UserId" placeholder="UserID">				
					<input type="password" id="Login_UserPw" placeholder="Password">
					<div class="errowMsg" id="LoginErrorMsg"></div>
					<div id="check">
						<input type="checkbox" id="remember"> <label
							for="remember">Remember me</label>
					</div>
					<br> <br> <input type="button" 
						onclick="validateLoginForm()" value="Login"> <a href="#">Forgot
						Password?</a>
				</form>

				<form class="signup" id="signupForm" name="signupForm">
					<input type="text" id="thesis_UserId" name="thesis_UserId" placeholder="UserID ( Email형식  )">
					<div class="errowMsg" id="SignUpIdErrorMsg"></div>
					
					<input type="password" id="thesis_UserPw" name="thesis_UserPw" placeholder="Password">
					<div class="errowMsg" id="SignUpPwErrorMsg"></div>		
					
					<input type="text" id="thesis_UserName" name="thesis_UserName"  placeholder="UserName">	
					<div class="errowMsg" id="SignUpNameErrorMsg"></div>	
					
					<input type="text" id="thesis_UserPhone" name="thesis_UserPhone" placeholder="Phone Number ( - 없이 입력해 주세요)">
					<div class="errowMsg" id="SignUpPhoneErrorMsg"></div>
					
					<br> <input type="button" id="validateSignup" onclick="validateSignupForm()" value="SignUp">
				</form>
			</div>
		</div>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="<c:url value='/js/views/UserLogin.js'/>"></script>
	<script type="text/javascript"
		src="<c:url value='/js/views/UserSignUp.js'/>"></script>
</body>

</html>