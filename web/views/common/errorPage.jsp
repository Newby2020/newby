<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isErrorPage="true"%>
<%
	String msg = (String) request.getAttribute("msg");
	Exception e = (Exception) request.getAttribute("exception");
	// 일반적으로 jsp에 사용되는 exception 내장 객체는 jspException 클래스를 활용한다.
	// 따라서 사용자 정의 예외를 구현할 때에는 Exception 객체를 직접 선언하여 사용하여야 한다.
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>에러 페이지</title>
<link rel="stylesheet" href="/semi/resources/css/joinModal.css">
<link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
<link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
<script src="/semi/resources/js/jquery-3.4.1.min.js"></script>
<style>
.outer{
		padding: 10px;
		width:600px;
		height:500px;
		color:black;
		margin-left:auto;
		margin-right:auto;
		margin-top:50px;
	}
</style>
</head>
<body>
	<div id="Allpanel" align="center">

		<%@ include file="../common/header.jsp"%>
		
		<div id="newby-body-panel" class="contents-div123" align="left">
		
<div class="outer">
		<h1>에러 페이지 입니다.</h1>
		<h3>ERROR : <%= e.getMessage() %></h3>
		<h4>에러가 발생했어요<br>
		이상이 없을 시 운영자에게 연락하시기 바랍니다.</h4>
	</div>
</div>
<%@ include file="../common/footer.jsp"%>
</div>
</body>
</html>