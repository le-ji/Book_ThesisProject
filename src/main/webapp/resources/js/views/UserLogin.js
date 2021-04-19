$(document).keypress(function(e) {
	if (e.keyCode == 13) {

	}
});

$(window).on("hashchange", function() {
	if (location.hash.slice(1) == "signup") {
		$(".page").addClass("extend");
		$("#login").removeClass("active");
		$("#signup").addClass("active");
	} else {
		$(".page").removeClass("extend");
		$("#login").addClass("active");
		$("#signup").removeClass("active");
	}
});
$(window).trigger("hashchange");

function validateLoginForm() {
	var Login_UserId = document.getElementById("Login_UserId").value;
	var Login_UserPw = document.getElementById("Login_UserPw").value;

	var dataresult = {
		thesis_UserId : Login_UserId,
		thesis_UserPw : Login_UserPw
	};
	
	if (Login_UserId === "" || Login_UserPw === "") {
		$("#LoginErrorMsg").text("ID와 PW를 입력해 주시기 바랍니다");
		return false;
	} else {
		$("#LoginErrorMsg").text("");
	}

	$.ajax({
		type : "post",
		url : "/",
		data : dataresult,
		dataType : 'json',
		success : function(result) {
			var lists = result.UserloginResult;
			if (lists) {
				alert("로그인되었습니다.");
			} else {
				alert("다시입력해 주시기바랍니다.");
			}
		}
	});

}
