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

    <!-- jQuery -->
    <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
</head>

<body>
    <!-- Reposive Sidebar -->
    <div class="sidebar">
        <div>
            <a class="fa fa-home" href="../../MainPage/NewbyMainPage.jsp"></a>
            <a class="index" href="admin_index.jsp">관리자페이지</a>
        </div>
        <a href="admin_index.jsp">Dashboard</a>
        <a href="admin_user.jsp">사용자</a>
        <a class="active" href="admin_classApply.jsp">클래스</a>
        <a href="admin_hostReport.jsp">호스트 신고</a>
        <a href="admin_accountancy.jsp">정산</a>
    </div>

    <div class="content">
        <h2>클래스 목록</h2>
        <div style="overflow-x:auto;">
            <!-- searchBar -->
            <div class="searchBar">
                <input type="text" placeholder="Search...">
                <button><i class="fa fa-search"></i></button>
            </div>
            <table>
                <tr>
                    <th>등록일</th>
                    <th>호스트명</th>
                    <th>클래스명</th>
                    <th>금액(원)</th>
                    <th>타입</th>
                    <th>카테고리</th>
                    <th>위치</th>
                    <th>인원수</th>
                    <th>스케쥴</th>
                    <th>내용</th>
                    <th>상태</th>
                </tr>
                <tr>
                    <td>2020-01-02</td>
                    <td>유승제</td>
                    <td>자바와함께 춤을</td>
                    <td>1,500,000</td>
                    <td>정적</td>
                    <td>IT</td>
                    <td>강남구 역삼동</td>
                    <td>25</td>
                    <td>2020-01-02 ~ 2020-04-10</td>
                    <td>
                        <button id="detailVeiwBtn" class="detailVeiwBtn">양식보기</button> <br>
                    </td>
                    <td>
                        <button type="button" id="confirmBtn">승인</button>
                        <button type="button" id="rejectBtn">반려</button>
                    </td>
                </tr>
                <tr>
                    <td>2020-01-02</td>
                    <td>유승제</td>
                    <td>자바와함께 춤을</td>
                    <td>1,500,000</td>
                    <td>정적</td>
                    <td>IT</td>
                    <td>강남구 역삼동</td>
                    <td>25</td>
                    <td>2020-01-02 ~ 2020-04-10</td>
                    <td>
                        <button>양식보기</button> <br>
                    </td>
                    <td>개설</td>
                </tr>
                <tr>
                    <td>2020-01-02</td>
                    <td>유승제</td>
                    <td>자바와함께 춤을</td>
                    <td>1,500,000</td>
                    <td>정적</td>
                    <td>IT</td>
                    <td>강남구 역삼동</td>
                    <td>25</td>
                    <td>2020-01-02 ~ 2020-04-10</td>
                    <td>
                        <button>양식보기</button> <br>
                    </td>
                    <td>반려</td>
                </tr>
            </table>
        </div>
    </div>

    <!-- The Modal for 양식 확인 -->
    <div id="contentsOfAppliedClass" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
            <span id="close1" class="close">&times;</span>
            <p>작성 양식 데이터 가져오기(호스트 마이페이지에서 가져옴)</p>
        </div>
    </div>

    <!-- The Modal for 승인 -->
    <div id="confirmModal" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
            <span id="close2" class="close">&times;</span>
            <p>신청된 클래스를 승인하시겠습니까?</p>
            <button type="button">승인</button>
            <button type="button" onclick="$('#confirmModal').css('display','none')">취소</button>
        </div>
    </div>

    <!-- The Modal for 승인 -->
    <div id="rejectModal" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
            <span id="close3" class="close">&times;</span>
            <p>신청된 클래스를 반려하시겠습니까?</p>
            <button type="button">반려</button>
            <button type="button" onclick="$('#rejectModal').css('display','none')">취소</button>
        </div>
    </div>


    <script>
        // ------------------ Modal--------------------------------
        // Get the modal
        var contents = document.getElementById("contentsOfAppliedClass");
        var confirm = document.getElementById("confirmModal");
        var reject = document.getElementById("rejectModal");

        // Get the button that opens the modal
        var detailVeiwBtn = document.getElementById("detailVeiwBtn");
        var confirmBtn = document.getElementById("confirmBtn");
        var rejectBtn = document.getElementById("rejectBtn");
        // var btn = document.getElementsByClassName("detailVeiwBtn");

        // Get the <span> element that closes the modal
        // var close = document.getElementsByClassName("close")[0];
        var close1 = document.getElementById("close1");
        var close2 = document.getElementById("close2");
        var close3 = document.getElementById("close3");



        // When the user clicks the button, open the modal 
        detailVeiwBtn.onclick = function () {
            contents.style.display = "block";
        }
        confirmBtn.onclick = function () {
            confirm.style.display = "block";
        }
        rejectBtn.onclick = function () {
            reject.style.display = "block";
        }

        // When the user clicks on <span> (x), close the modal
        close1.onclick = function () {
            contents.style.display = "none";
        }
        close2.onclick = function () {
            confirm.style.display = "none";
        }
        close3.onclick = function () {
            reject.style.display = "none";
        }

        // TODO 이거 어케하나염

        // ------------------ confirm() & reject()--------------------------------

    </script>
</body>

</html>