<%@page import="review.model.vo.Review"%>
<%@page import="cakeinfo.model.vo.CakeInfo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	
	CakeInfo cakeInfo =(CakeInfo)request.getAttribute("cakeInfo");
	int cakeNo = (Integer)request.getAttribute("cakeNo");
	String currShopId = (String)request.getAttribute("currShopId");
	String cakeName = (String)request.getAttribute("cakeName");
	int cakePrice = (Integer)request.getAttribute("cakePrice");
	String cakeFilePath = (String)request.getAttribute("cakeFilePath");
	
%>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>후기작성</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<!-- <link rel="stylesheet" href="/css/reviewPage.css"> -->
<link rel="stylesheet" href="/css/cakeStation.css">
<link rel="stylesheet" href="/css/reviewWrite.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
</head>
<body>
	<%@include file ="/WEB-INF/views/header.jsp" %>
	
	<main>
		<section id ="blank"></section>
		<div id="subject">
			<h1>후기 작성</h1>
		</div>
		<section id="contens">
		<div id="cake-img"><img src="<%=cakeFilePath %>" width=150px height=150px/></div>
		<div id="cake-detail">
		<h2><%=cakeName %></h2><br>
		<p><%=cakePrice %> 원</p></div>
		<form action="/review/write" method="post">
			<input type="hidden" name="cakeNo" value="<%=cakeNo%>">  <!--  cakeInfo.getCakeNo() -->
			<input type="hidden" name="currShopId" value="<%=currShopId%>">   <!-- cakeInfo.getShopId() -->
			<div id = "score"><select name="REVIEW_SCORE">
					<option value="5">★★★★★
					<option value="4">★★★★☆
					<option value="3">★★★☆☆
					<option value="2">★★☆☆☆
					<option value="1">★☆☆☆☆
				</select></div>
				<br>
			<textarea placeholder="내용을 입력하세요" name="REVIEW_CONTENT" id="review-text"></textarea>
			<div id="text-cnt">(0 / 200)</div>
			<div id= btn>
			<input type="submit" value="완료">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<input type="reset" value="취소">
			</div>
		</form> 
		</section>
	</main>
	<script>
		var num = 0;
		$("#review-text").on("keyup", function() {
			num++;
			$('#text-cnt').html("(" + $(this).val().length + "/ 200)");
			if($(this).val().length > 200) {
				alert("최대 200자까지 입력가능합니다.");
				$(this).val($("#review-text").val().substring(0,200));
				$('#text-cnt').html("(200/ 200)");
			}
		});
	</script>
		
	<%@include file ="/WEB-INF/views/footer.jsp" %>
</body>
</html>