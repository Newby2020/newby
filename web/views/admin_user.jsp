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
        <a class="active" href="admin_user.jsp">사용자</a>
        <a href="admin_classApply.jsp">클래스</a>
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
                    <th>ID</th>
                    <th>이름</th>
                    <th>전화번호</th>
                    <th>이메일</th>
                    <th>주소</th>       
                    <th>가입일</th>       
                    <th>구분</th>
                    <th>참여/운영<br>클래스(수) </th>
                    <th>상태</th>
                </tr>
                <tr>
                    <td>khteacher</td>
                    <td>유승제</td>
                    <td>010-3240-4924</td>
                    <td>kh001@test.com</td>
                    <td>서울시 강남구 역삼동</td>
                    <td>2020-01-04</td>
                    <td>호스트</td>
                    <td>5 / 2</td>
                    <td>정지</td>
                </tr>
                <tr>
                    <td>khteacher</td>
                    <td>유승제</td>
                    <td>010-3240-4924</td>
                    <td>kh001@test.com</td>
                    <td>서울시 강남구 역삼동</td>
                    <td>2020-01-04</td>
                    <td>일반</td>
                    <td>3</td>
                    <td>탈퇴</td>
                </tr>
                <tr>
                    <td>khteacher</td>
                    <td>유승제</td>
                    <td>010-3240-4924</td>
                    <td>kh001@test.com</td>
                    <td>서울시 강남구 역삼동</td>
                    <td>2020-01-04</td>
                    <td>일반</td>
                    <td>12</td>
                    <td>휴면</td>
                </tr>
                <tr>
                    <td>khteacher</td>
                    <td>유승제</td>
                    <td>010-3240-4924</td>
                    <td>kh001@test.com</td>
                    <td>서울시 강남구 역삼동</td>
                    <td>2020-01-04</td>
                    <td>일반</td>
                    <td>64</td>
                    <td>이용중</td>
                </tr>
            </table>
        </div>
    </div>

    <!-- The Modal for 양식 확인 -->
    <div id="contentsOfAppliedClass" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
            <span id="close" class="close">&times;</span>
            <p>작성 양식 데이터 가져오기(호스트 마이페이지에서 가져옴)</p>
        </div>
    </div>
    <script>
        // ------------------ Modal--------------------------------
        // Get the modal
        var contents = document.getElementById("contentsOfAppliedClass");
        
        // Get the button that opens the modal
        var btn = document.getElementById("detailVeiwBtn");
        // var btn = document.getElementsByClassName("detailVeiwBtn");
        
        // Get the <span> element that closes the modal
        var close = document.getElementsByClassName("close")[0];
        
        // When the user clicks the button, open the modal 
        btn.onclick = function() {
            contents.style.display = "block";
        }
        
        // When the user clicks on <span> (x), close the modal
        close.onclick = function() {
            contents.style.display = "none";
        }

        // TODO 이거 어케하나염
        // ------------------ confirm() & reject()--------------------------------
        function confirm() {
            window.confirm('해당 클래스의 개설을 승인하시겠습니까?');
        }
        
        function reject(){
            window.confirm('해당 클래스의 개설을 승인하시겠습니까?');
        }
    </script>
</body>
</html>