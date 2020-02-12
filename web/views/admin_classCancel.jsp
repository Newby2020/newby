<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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

</head>

<body>
    <!-- Reposive Sidebar -->
    <div class="sidebar">
        <div>
            <a class="fa fa-home" href="../../MainPage/NewbyMainPage.jsp"></a>
            <a class="index" href="admin_index.jsp">관리자페이지</a>
        </div>
        <a href="admin_index.jsp">Dashboard</a>
        <a href="/semi/userList.ad">사용자</a>
        <a href="admin_classApply.jsp">클래스</a>
        <a class="active" href="admin_classCancel.jsp">클래스 취소</a>
        <a href="admin_hostReport.jsp">호스트 신고</a>
        <a href="admin_accountancy.jsp">정산</a>

    </div>

    <div class="content">
        <h2>클래스 취소 목록</h2>
        <div style="overflow-x:auto;">
            <!-- searchBar -->
            <div class="searchBar">
                <input type="text" placeholder="Search...">
                <button><i class="fa fa-search"></i></button>
            </div>
            <table>
                <tr>
                    <th>클래스명</th>
                    <th>클래스 번호</th>
                    <th>사용자명</th>
                    <th>금액(원)</th>
                    <th>취소 날짜</th>
                    <th>상태</th>
                </tr>
                <tr>
                    <td>자바와함께 춤을</td>
                    <td>C1</td>
                    <td>홍길동</td>
                    <td>230,000</td>
                    <td>2020-02-13</td>
                    <td>취소신청</td>
                </tr>
                <tr>
                    <td>자바와함께 춤을</td>
                    <td>C1</td>
                    <td>홍길동</td>
                    <td>230,000</td>
                    <td>2020-02-13</td>
                    <td>완료</td>               
                </tr>
            </table>
        </div>
    </div>
</body>

</html>