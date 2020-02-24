<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.kh.newby.classvo.model.vo.*, 
    		java.util.*"%>
<%
	ClassVo c = (ClassVo)request.getAttribute("c"); 
	
%>

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

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>

<style>
	#tableDiv tr td:first-child, h4{font-size : 20px; font-weight: bold;}
	#tableDiv tr td:nth-child(2){padding-left : 40px;} 
	#tableDiv {padding-bottom : 100px}
</style>


</head>
<body>
	<script>
		console.log($('tr'));
		console.log($('#tableDiv'));
	</script>
	<!-- Reposive Sidebar -->
	<div class="sidebar">
	
        <div>
            <a class="fa fa-home" href="index.jsp"></a>
            <a class="index" href="/semi/index.ad">관리자페이지</a>
        </div>
		<a href="/semi/index.ad">Dashboard</a> <a href="/semi/userList.ad">사용자</a>
		<a href="/semi/classApplyList.ad">클래스 등록 신청</a> 
		<a class="active" href="/semi/classList.ad">개설 클래스</a> <a href="/semi/claimList.ad">신고</a>
		<!-- <a href="admin_accountancy.jsp">정산</a> -->
	</div>

	<!--contents-->
	<div class="content" align="left" style="padding-left: 60px; padding-bottom : 300px">
		<div>
			<br>
			<h2>클래스 정보</h2>
			<hr>
			<br> <br>
			<div id="tableDiv">
				<table>
					<tbody>
						<tr>
							<td>클래스명</td>
							<td><%= c.getClassName()%></td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td>카테고리</td>
							<td>
								<div style="display: inline"><%= c.getFirstCategory()%></div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<div style="display: inline"><%= c.getSecondCategory()%></div>
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<div style="display: inline"><%= c.getThirdCategory()%></div>
							</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td>클래스 형태</td>
							<td><%= c.getClassType()%></td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td>인원수</td>
							<td><%= c.getClassMaxnum()%> 명</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td>1회당 수업시간</td>
							<td><%= c.getClassTime() %> 시간</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td>1회당 가격</td>
							<td><%= c.getClassPrice() %> 원</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td>이미지</td>
							<td>
								<div id="refresh1" style="display: flex;">
									<img id="blah"
										src="/semi/resources/uploadImg/<%= c.getClassImg() %>" alt="사진"
										style="width: 120px; height: 120px; display: block; border-radius: 5px; border: 3px solid rgb(9, 129, 241);" />
								</div>
							</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td>장소</td>
							<td>
								<div><%= c.getClassLocation() %></div>
							</td>
						</tr>
						<tr><td><br></td></tr><tr><td><br></td></tr>
						<tr>
							<td>수업 대상</td>
							<td><%= c.getClassTarget() %></td>
						</tr>
				</table>
				<div>
					<br> <br>
					<h4 class="title">커리큘럼</h4>
					<div class="cont"><%= c.getClassCurriculum() %></div>
					<br> <br> <br>
					<h4 class="title">수업 소개</h4>
					<div class="cont"><%= c.getClassIntro() %></div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>