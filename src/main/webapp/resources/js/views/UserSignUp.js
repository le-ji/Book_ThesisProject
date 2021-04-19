$(document).keypress(function(e) {
	if (e.keyCode == 13) {
	}
});
var IdJS = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
var PwJS = /^[A-Za-z0-9~!@#$%^&*()_+|<>?:{}]{4,20}$/;
var PhoneJS = /^01([0|1|6|7|8|9]?)?([0-9]{3,4})?([0-9]{4})$/;

$(function() {
	$("#thesis_UserId").blur(
			function() {
				var thesis_UserId = $('#thesis_UserId').val();
				$.ajax({
					url : '/User/userIdCheck?thesis_UserId=' + thesis_UserId,
					type : 'POST',
					dataType : 'json',
					success : function(result) {
						var UserSignIdcheckResult = result.UserSignIdcheckResult;
						if (UserSignIdcheckResult) {
							if (IdJS.test(thesis_UserId)) {
								$("#SignUpIdErrorMsg").text("");
								$("#validateSignup").attr('disabled', false); 
							} else if (thesis_UserId == "") {
								$('#SignUpIdErrorMsg').text('ID를 입력해주시기 바랍니다.');
								$("#validateSignup").attr('disabled', true);
								return false;
							} else {
								$('#SignUpIdErrorMsg').text("이메일 형식에 ID를 입력해 바랍니다.");
								$("#validateSignup").attr('disabled', true); 
								return false;
							}
						} else {
							$("#SignUpIdErrorMsg").text("사용중인 ID입니다.");
							$("#validateSignup").attr('disabled', true); 
							return false;
						}
					},
				});
			});
})

$(function() {
	$("#thesis_UserPw").blur(function() {
		if (PwJS.test($("#thesis_UserPw").val())) {
			$("#SignUpPwErrorMsg").text("");
			$("#validateSignup").attr('disabled', false); 
		} else {
			$("#SignUpPwErrorMsg").text('숫자,영문,특수문자를 이용해 주시기 바랍니다.');
			$("#validateSignup").attr('disabled', true); 
			return false;
		}
	});
})

$(function() {
	$("#thesis_UserPhone").blur(function() {
		if (PhoneJS.test($("#thesis_UserPhone").val())) {
			$("#SignUpPhoneErrorMsg").text("");
			$("#validateSignup").attr('disabled', false); 
		} else {
			$("#SignUpPhoneErrorMsg").text('필수정보입니다.');
			$("#validateSignup").attr('disabled', true); 
			return false;
		}
	});
})

function validateSignupForm() {
	
	var thesis_UserName = document.getElementById("thesis_UserName").value;

	if (thesis_UserName =="") {
		$("#SignUpNameErrorMsg").text('필수정보입니다.');
		$("#validateSignup").attr('disabled', true); 
		return false;
	}else{
		$("#SignUpNameErrorMsg").text("");
		$("#validateSignup").attr('disabled', false); 
	}

	$.ajax({
		type : "post",
		url : "/User/UserSignUpCheck",
		data : $("#signupForm").serialize(),
		contentType: 'application/x-www-form-urlencoded; charset=UTF-8', 
		dataType : 'json',
		success : function(result) {
			var lists = result.UserSignResult;
			if (lists) {
				alert("회원가입 되었습니다.");
			} else {
				alert("잠시후 다시 시도해 주시기 바랍니다.");
			}
		}
	});
}