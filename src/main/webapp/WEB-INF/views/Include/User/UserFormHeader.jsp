<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<div id="page">
			<header>
				<div id="logo">
					<a href="#" onclick="UserMainForm()"><img src="/img/User/Header.png" alt="Logo"></a>
				</div>
				<div id="top_menu">
					<a href="#" onclick="UserMainForm()">HOME</a> | <a href="#"
						onclick="UserModifyForm()">MODIFY</a> | <a href="#"
						onclick="UserLogoutForm()">LOGOUT</a>
				</div>
				<nav>
					<ul>
						<li><a href="#" onclick="UserProjectForm()">PROJECT</a></li>
						<li><a href="#" onclick="UserWritingrForm()">WRITING</a></li>
						<li><a href="#" onclick="UserThesisForm()">THESIS</a></li>
						<li><a href="#" onclick="UserBookForm()">BOOK</a></li>
						<li><a href="#" onclick="UserQAForm()">Q&A</a></li>
					</ul>
				</nav>
			</header>
		</div>
		<script type="text/javascript"
		src="<c:url value='/js/views/Include/User/UserPageMove.js'/>"></script>
</body>
</html>