<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <meta http-equiv="refresh" content="0.5 url=/"> -->
<link rel="stylesheet" type="text/css" href="/css/success.css">
<link rel="stylesheet" type="text/css" href="/css/reset.css">
<title>로그인 성공</title>
</head>
<body>
	
	<%@include file ="/WEB-INF/views/header.jsp" %>
	
	<main>
		
		<section id="wrapper"> <!-- wrapper? 필ㅛ없나? -->
			
			<section id="find-box">
			
				<h2 id="h2Id">로그인을 성공하였습니다!!</h2>
			
				<button type="button" class="btn" onclick="location.href='/index.jsp'">홈으로 이동</button>
			</section>			
				

	</main>
	
	<%@include file ="/WEB-INF/views/footer.jsp" %>
	
</body>
</html>