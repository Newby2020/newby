<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.kh.newby.classvo.model.vo.*, 
    		java.util.*"%>
<%
	/* ClassVo c = request */
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>admin_클래스 정보</title>

<!-- Load icon libarary -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<!-- Sidebar & Footer : Basic-->
<link rel="stylesheet" href="/semi/resources/css/admin_basic.css">

<!--  지훈이형 꺼 -->
<link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
<link rel="stylesheet" href="/semi/resources/css/mypage_EnrollInClass.css">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<style>
</style>
</head>
<body>
	<!-- Reposive Sidebar -->
	<div class="sidebar">
		<a class="fa fa-home" href="../../MainPage/NewbyMainPage.jsp"></a> 
		<a class="index" href="/semi/index.ad">관리자페이지</a> 
		<a href="/semi/index.ad">Dashboard</a> <a href="/semi/userList.ad">사용자</a>
		<a class="active" href="/semi/classApplyList.ad">클래스 등록 신청</a> 
		<a href="/semi/classList.ad">개설 클래스</a> <a href="/semi/claimList.ad">신고</a>
		<a href="admin_accountancy.jsp">정산</a>
	</div>

	<!--contents-->
	<div class="content" align="left" style="padding-left: 60px">
		<div id="mn16s">
			<br>
			<h2>클래스 정보</h2>
			<hr id="hrSet53">
			<br> <br>
			<div id="contentsDivSize29">
				<!-- 클래스번호 전송 -->
				<%-- <input type="hidden" name="cno" value="<%=cno%>"> --%>
				<table>
					<tbody>
						<tr>
							<td class="tline1row">클래스명<br> <small>(40자 이내)</small></td>
							<td class="tline2row" style="font-size: 11pt;">제목에서부터 호스트</td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td><br></td>
						</tr>
						<tr>
							<td class="tline1row">카테고리</td>
							<td>
								<div class="sl1 sl1" style="display: inline">신나는</div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<div class="sl1 sl1" style="display: inline">액티비티</div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<div class="sl1 sl1" style="display: inline">달리기</div>
							</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td class="tline1row">클래스 형태</td>
							<td>1:1</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td class="tline1row">인원수</td>
							<td>1명</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td class="tline1row">1회당 수업시간</td>
							<td>4 시간</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td class="tline1row">1회당 가격</td>
							<td>25,000원</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td class="tline1row">이미지<br> <small>(2MB 이하)</small></td>
							<td>
								<div id="refresh1" style="display: flex;">
									<img id="blah"
										src="/semi/resources/uploadImg/<%-- <%=img %> --%>" alt="사진"
										style="width: 120px; height: 120px; display: block; border-radius: 5px; border: 3px solid rgb(9, 129, 241);" />
								</div>
							</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td class="tline1row">일정</td>
							<td class="addSchedule23" style="display: flex;">
								<div class='dataCl'>2020-20-20</div>&nbsp;&nbsp;&nbsp;
								<div class='dataCl'>12: 20</div>
							</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td class="tline1row">장소</td>
							<td>
								<div class='dataCl' style = "text-align-last : left">서울시 종로구</div>
								<div class='dataCl' style = "text-align-last : left">정독도서관</div>
							</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td class="tline1row tt121">수업 대상</td>
							<td>20대 후반 사회 초년생</td>
						</tr>
				</table>
				<div id="divFi">
					<br> <br>
					<h5 class="tline1row tt121">커리큘럼</h5>
					<div>커리큘럼커리큘럼커리큘럼커리큘럼커리큘럼커리큘럼커리큘럼
						커리큘럼커리큘럼커리큘럼커리큘럼커리큘럼커리큘럼커리큘럼 커리큘럼커리큘럼커리큘럼커리큘럼커리큘럼커리큘럼커리큘럼</div>
					<br> <br> <br>
					<h5 class="tline1row tt121">수업 소개</h5>
					<div>수업소개수업소개수업소개수업소개수업소개수업소개수업소개
						수업소개수업소개수업소개수업소개수업소개수업소개수업소개 수업소개수업소개수업소개수업소개수업소개수업소개수업소개</div>
				</div>
				<br> <input type="submit" class="finalBtn24" value="반려">
				&nbsp;&nbsp;&nbsp;&nbsp; <input type="reset" class="finalBtn24"
					value="승인"> <br> <br> <br> <br> <br>
			</div>
		</div>
	</div>
</body>
</html>