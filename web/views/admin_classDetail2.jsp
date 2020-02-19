<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin_클래스 정보</title>

    <!-- Load icon libarary -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Sidebar & Footer : Basic-->
    <link rel="stylesheet" href="/semi/resources/css/admin_basic.css">

    
    <!-- 지훈이형꺼 -->
       <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_EnrollInClass.css">

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>
<body>
    <!-- Reposive Sidebar -->
    <div class="sidebar">
        <div>
            <a class="fa fa-home" href="../../MainPage/NewbyMainPage.jsp"></a>
            <a class="index" href="/semi/index.ad">관리자페이지</a>
        </div>
        <a href="/semi/index.ad">Dashboard</a>
        <a href="/semi/userList.ad">사용자</a>
        <a class="active" href="/semi/classApplyList.ad">클래스 등록 신청</a>
		<a href="/semi/classList.ad">개설 클래스</a> 
        <a href="/semi/claimList.ad">신고</a>
        <a href="admin_accountancy.jsp">정산</a>
    </div>
        <div class="content">
        <h2>클래스 정보</h2>
        <div>
			<table>
				<tbody>
					<tr>
						<td class="tline1row">클래스명<br><small>(40자 이내)</small></td>
						<td>데이터 가져오기</td>
					</tr>
					<tr>
						<td></td>
						<td>1차 / 2차 / 3차</td>
					</tr>
					<tr>
						<td class="tline1row">카테고리</td>
						<td>데이터 가져오기</td>
					</tr>
						<td class="tline1row">클래스 형태</td>
						<td>데이터 가져오기</td>
					<tr>
						<td class="tline1row">인원수</td>
						<td>데이터 가져오기</td>
					</tr>
						<td class="tline1row">1회당 수업시간</td>
						<td>데이터 가져오기</td>
					<tr>
						<td class="tline1row">1회당 가격</td>
						<td>데이터 가져오기</td>
					</tr>
					<tr>
						<td class="tline1row">이미지</td>
						<td>데이터 가져오기</td>
					</tr>
						<td class="tline1row">일정</td>
						
					<tr>
						<td class="tline1row">장소</td>
					</tr>
					<tr>
						<td class="tline1row tt121">수업 대상</td>
					</tr>
				</tbody>
			</table>
			
			<h5 class="tline1row tt121">커리큘럼</h5>
			<div>
				<%-- <jsp:param value="<%=curri %>" name="intro"/> --%>
			</div>
			
			<h5 class="tline1row tt121">수업 소개</h5>		
			<div>
				<%-- <jsp:param value="<%=intro %>" name="intro"/> --%>
			</div>
        </div>
	</div>
</body>
</html>