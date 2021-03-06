<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admim_정산 목록</title>

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
            <a class="fa fa-home" href="index.jsp"></a>
            <a class="index" href="/semi/index.ad">관리자페이지</a>
        </div>
        <a href="admin_index.jsp">Dashboard</a>
        <a href="/semi/userList.ad">사용자</a>
        <a href="/semi/classApplyList.ad">클래스 등록 신청</a>
		<a href="admin_classCancel.jsp">개설 클래스</a>
        <a href="admin_hostReport.jsp">신고</a>
        <a class="active" href="/semi/paymentList.ad">정산</a>
    </div>
    <div class="content">
        <h2>정산</h2>
        <div style="overflow-x:auto;">
            <!-- searchBar -->
            <div class="searchBar"> 
                <input type="text" placeholder="Search..." >
                <button><i class="fa fa-search"></i></button>
            </div>
            <table>
                <thead>
                    <tr>
                        <th>클래스명</th>
                        <th>호스트명</th> 
                        <th>수강인원</th>
                        <th>은행명</th> 
                        <th>계좌번호</th>   
                        <th>금액(원)</th>      
                        <th>상태</th>
                        <th>입금일</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>자바와 함께 춤을</td>
                        <td>유승제</td>
                        <td>20</td>
                        <td>우리</td>
                        <td>2033-10232-20131</td>
                        <td>120,000</td>
                        <td>
                            <button class="tableBtn">입금</button>
                        </td>
                        <td>-</td>
                    </tr>
                    <tr>
                        <td>자바와 함께 춤을</td>
                        <td>유승제</td>
                        <td>20</td>
                        <td>우리</td>
                        <td>2033-10232-20131</td>
                        <td>120,000</td>
                        <td>완료</td>
                        <td>2020-04-21</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</body>
</html>