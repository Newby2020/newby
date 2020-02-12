<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.newby.Member.model.vo.*, java.util.*" %>
    
<% 
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>classApply_admin</title>

    <!-- Load icon libarary -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Sidebar & Footer : Basic-->
    <link rel="stylesheet" href="../resources/css/admin_basic.css">
    
    <!-- Table & SearchBar-->
    <link rel="stylesheet" href="../resources/css/admin_table&searchBar.css">

    <!-- The Modal & CheckBox-->
    <link rel="stylesheet" href="../resources/css/admin_modal&checkBox.css">
</head>

<body>
    <!-- Reposive Sidebar -->
    <div class="sidebar">
        <div>
            <a class="fa fa-home" href="../../MainPage/NewbyMainPage.jsp"></a>
            <a class="index" href="admin_index.jsp">관리자페이지</a>
        </div>
        <a href="admin_index.jsp">Dashboard</a>
        <!-- <a class="active" href="admin_user.jsp">사용자</a> -->
        <a class="active" href="/semi/user.ad">사용자</a>
        <a href="admin_classApply.jsp">클래스</a>
		<a href="admin_classCancel.jsp">클래스 취소</a>
        <a href="admin_hostReport.jsp">호스트 신고</a>
        <a href="admin_accountancy.jsp">정산</a>
    </div>

    <div class="content">
        <h2>사용자 목록</h2>
        <div style="overflow-x:auto;">
            <!-- searchBar -->
            <div class="searchBar"> 
                <input type="text" placeholder="Search..." >
                <button><i class="fa fa-search"></i></button>
            </div>
            <table>
                <tr>
                    <th>사용자 번호</th>
                    <th>이름</th>
                    <th>아이디</th>
                    <th>전화번호</th>
                    <th>가입일</th>       
                    <th>마일리지</th>
                    <th>호스트 번호</th>
                </tr>
                <% for(Member m : list) {%>
                <tr>
                    <td><%= m.getM_no() %></td>
                    <td><%= m.getM_name() %></td>
                    <td><%= m.getM_id() %></td>
                    <td><%= m.getM_phone() %></td>
                    <td><%= m.getM_enrollDate() %></td>
                    <td><%= m.getM_mileage() %></td>
                    <td><%= m.getH_no() %></td>
                </tr>
                <% } %>
            </table>
        </div>
    </div>
</body>
</html>