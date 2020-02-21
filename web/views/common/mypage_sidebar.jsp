<%@page %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.newby.member.model.vo.Member"%>
<%
	 Member s = (Member)session.getAttribute("Member");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sidebar</title>
</head>
<body>
<div class="sidenavsk">
    <div id="sidebar-titleso67" align="center">마이페이지</div>
    <a href="/semi/profile.do">프로필</a>
    <a href="/semi/cSche.do">수강예정 클래스</a>
    <a href="/semi/payList.do">결제 내역</a>
    <a href="/semi/cancelList.do">취소 내역</a>
    <a href="/semi/review.do">후기 작성</a>	
<%if(s.getH_no()!=null){ %>
    <button class="dropdown-btnqo">호스트
        <i id="ci22">≡</i>
    </button>
    <div class="dropdown-soxk">
      <a href="/semi/views/mypage_EnrollInClass.jsp">클래스 등록</a>
      <a href="/semi/cSelHno.do">클래스 관리</a>
    </div>
<%} %>
</div>
</body>
</html>