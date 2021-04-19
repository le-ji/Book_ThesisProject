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
<title>Thesis&BookWritingPage</title>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
</head>
<link rel="stylesheet" href="/css/views/User/UserWritingForm.css"
	media="(min-width:600px)">
<body>
	<%@include file="/WEB-INF/views/Include/User/UserFormHeader.jsp"%>

	<div id="page">
		<div class="content">
			<div class="selectContent">
				<div class="select">
					<a id="Book" class="active" href="#Book">Book</a> <a
						id="Thesis" href="#Thesis">Thesis</a>
				</div>
				<div class="Main_content">
					
					<form class="Book" name="BookForm">
						<input type="text" id="Book_subject" placeholder="BookName">
						<textarea id="Book_content" placeholder="BookContent"></textarea>
						<div class="filebox preview-image">
							<input class="upload-name" value="파일선택" disabled="disabled">
							<label for="input-file">업로드</label> <input type="file"
								id="input-file" class="upload-hidden">
						</div>
						<br> <br> <input type="button"
							onclick="validateBookForm()" value="registration">
					</form>
					
					<form class="Thesis" id="ThesisForm">
						<input type="text" id="Thesis_subject" placeholder="ThesisName">
						<textarea id="Thesis_content" placeholder="ThesisContent"></textarea>
						<div class="filebox preview-image">
							<input class="upload-name" value="파일선택" disabled="disabled">
							<label for="input-file">업로드</label> <input type="file"
								id="input-file" class="upload-hidden">
						</div>
						<br> <br> <input type="button"
							onclick="validateThesisForm()" value="registration">
					</form>
				</div>

			</div>
		</div>
	</div>

	<script src="https://code.jquery.com/jquery-3.3.1.min.js"
		integrity="sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8="
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="<c:url value='/js/views/User/UserWritingForm.js'/>"></script>
	<%@include file="/WEB-INF/views/Include/User/UserFormFooter.jsp"%>
</body>
</html>