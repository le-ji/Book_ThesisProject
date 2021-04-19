<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/security/tags"
	prefix="sec"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Thesis&BookMainPage</title>
</head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="/css/views/User/UserMainForm.css"
	media="(min-width:600px)">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<script type="text/javascript"
	src="<c:url value='/js/views/User/UserMainForm.js'/>"></script>
<body>
	<%@include file="/WEB-INF/views/Include/User/UserFormHeader.jsp"%>
	<div id="page">
		<article class="content">
			<section id="main">
				<div class="w3-content w3-display-container"
					style="max-width: 800px">
					<img class="mySlides" src="/img/User/Main.jpg" alt="main img" style="width: 100%"> 
					<img class="mySlides" src="/img/User/Main.jpg" alt="main img" style="width: 100%">
					<img class="mySlides" src="/img/User/Main.jpg" alt="main img"
						style="width: 100%">
					<div
						class="w3-center w3-container w3-section w3-large w3-text-white w3-display-bottommiddle"
						style="width: 100%">
						<div class="w3-left w3-hover-text-khaki" onclick="plusDivs(-1)">&#10094;</div>
						<div class="w3-right w3-hover-text-khaki" onclick="plusDivs(1)">&#10095;</div>
						<span
							class="w3-badge demo w3-border w3-transparent w3-hover-white"
							onclick="currentDiv(1)"></span> <span
							class="w3-badge demo w3-border w3-transparent w3-hover-white"
							onclick="currentDiv(2)"></span> <span
							class="w3-badge demo w3-border w3-transparent w3-hover-white"
							onclick="currentDiv(3)"></span>
					</div>
				</div>
			</section>
		</article>
	</div>
	
	<%@include file="/WEB-INF/views/Include/User/UserFormFooter.jsp"%>

</body>
</html>