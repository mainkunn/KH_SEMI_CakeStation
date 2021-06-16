<%@page import="shop.model.vo.ShopMember"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	ArrayList<ShopMember> list = (ArrayList<ShopMember>)request.getAttribute("sList");
	String pageNavi = (String)request.getAttribute("pageNavi");
%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>관리자 마이페이지</title>	
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
	    <link rel="stylesheet" href="/css/adminMyPage.css">
	</head>
	<body>
		<%@include file ="/WEB-INF/views/header.jsp" %>
	
		<main>
			<%@include file ="/WEB-INF/views/adminMyPageSidebar.jsp" %>
	        
			<section id="content-box">
				<h2 id="sub-title">탈퇴 신청 목록</h2>
				<% if(list.isEmpty()) {%>
		        	<a id="list-null">회원탈퇴 희망 매장이 없습니다.</a>
		        <% } %>
		        <% if(!list.isEmpty()) {%>
					<table border="1" id="adminP-table" style="border-collapse:collapse">
						<tr>
							<th>회원 아이디</th>
							<th>업체명</th>
							<th>탈퇴승인</th>
							<th>탈퇴거부</th>
						</tr>
						<% for(ShopMember sOne : list) { %>
						<tr>
							<td><%= sOne.getShopId() %></td>
							<td><%= sOne.getShopName() %></td>
							<td><a href="/admin/dropApproval?shop-id=<%= sOne.getShopId() %>">[승인]</a></td>
							<td><a href="/admin/dropReject?shop-id=<%= sOne.getShopId() %>">[거부]</a></td>
						</tr>
						<% } %>
						<td colspan="4" align="center"><%= pageNavi %></td>
					</table>
				<% } %>
			</section>
		</main>
		
		<%@include file ="/WEB-INF/views/footer.jsp" %>
	</body>
</html>