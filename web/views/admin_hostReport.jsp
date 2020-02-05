<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>hostReport_admin</title>

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

    <!-- TODO 왜 파일 분리해서 불러오면 실행이 안되는가.... -->
    <!-- Modal js -->
    <script src="../resources/js/admin_hostReport_modal.js"></script>
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
        <a href="admin_classApply.jsp">클래스</a>
        <a class="active"  href="admin_hostReport.jsp">호스트 신고</a>
        <a href="admin_accountancy.jsp">정산</a>
    </div>
    <div class="content">
        <h2>신고 리스트</h2>

        <div style="overflow-x:auto;">
            <!-- searchBar -->
            <div class="searchBar">
                <input type="text" placeholder="Search...">
                <button><i class="fa fa-search"></i></button>
            </div>
            <table>
                <tr>
                    <th>신고일</th>
                    <th>클래스명</th>
                    <th>호스트명</th>
                    <th>전화번호</th>
                    <th>내용</th>
                    <th>처리</th>
                    <th>신고처리일</th>
                    <th>정지 기간</th>
                    <th>정지 만료일</th>
                </tr>
                <tr>
                    <td>2020-03-23</td>
                    <td>자바와 함께 춤을</td>
                    <td>유승제</td>
                    <td>010-1234-5678</td>
                    <td>
                        <button id="cotentsBtn">조회</button>
                    </td>
                    <td>
                        <button id="confirmBtn">확인</button>
                        <button id="suspendBtn">계정정지</button>
                    </td>
                    <td>-</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
                <tr>
                    <td>2020-03-23</td>
                    <td>자바와 함께 춤을</td>
                    <td>유승제</td>
                    <td>010-1234-5678</td>
                    <td>
                        <button id="myBtn">조회</button>
                    </td>
                    <td>정지</td>
                    <td>2020-03-25</td>
                    <td>30일</td>
                    <td>2020-04-23</td>
                </tr>
                <tr>
                    <td>2020-03-23</td>
                    <td>자바와 함께 춤을</td>
                    <td>유승제</td>
                    <td>010-1234-5678</td>
                    <td>
                        <button id="myBtn">조회</button>
                    </td>
                    <td>확인</td>
                    <td>2020-03-25</td>
                    <td>-</td>
                    <td>-</td>
                </tr>
            </table>
            </table>
        </div>
    </div>

    <!-- The Modal for 조회-->
    <div id="contentsOfReport" class="modal">
        <!-- Modal content -->
        <div class="modal-content">
            <span id="close1" class="close">&times;</span>
            <p>신고 양식에서 데이터 가져오기</p>
        </div>
    </div>

    <!-- The Modal for 계정 정지-->
    <div id="suspend" class="modal">

        <!-- Modal content -->
        <div class="modal-content">
            <span id="close2" class="close">&times;</span>
            <h1 align="center">사용자 계정 정지</h1>
            <form action="#" method="POST" onsubmit="return confirm();">
                <div>
                    <h3>정지 기간</h3>

                    <label class="container">30일
                        <input type="radio" name="radio" checked="checked">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">60일
                        <input type="radio" name="radio">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">90일
                        <input type="radio" name="radio">
                        <span class="checkmark"></span>
                    </label>
                    <label class="container">영구정지
                        <input type="radio" name="radio">
                        <span class="checkmark"></span>
                    </label>
                    <h3>사유</h3>
                    <textarea name="" id="textarea" cols="100%" rows="20"
                        style="resize: none; position: relative;"></textarea>
                    <br><br>
                    <button class="modalBtn">적용</button> <!-- button의 경우 default type="submit" 이다.-->
                    <button type="reset" class="modalBtn" onclick="$('#suspend').css('display','none')">취소</button>
                </div>
            </form>
        </div>
    </div>
    <script>
        // ------------------ Modal--------------------------------
        // Get the modal
        var contents = document.getElementById("contentsOfReport");
        var suspend = document.getElementById("suspend");

        // Get the button that opens the modal
        var btn1 = document.getElementById("cotentsBtn");
        var btn2 = document.getElementById("suspendBtn");

        // Get the <span> element that closes the modal
        // var span = document.getElementsByClassName("close")[0];
        var close1 = document.getElementById('close1');
        var close2 = document.getElementById('close2');

        // When the user clicks the button, open the modal 
        btn1.onclick = function () {
            contents.style.display = "block";
        }
        btn2.onclick = function () {
            suspend.style.display = "block";
        }

        // When the user clicks on <span> (x), close the modal
        close1.onclick = function () {
            contents.style.display = "none";
        }
        close2.onclick = function () {
            suspend.style.display = "none";
        }

        // --------------- submit 조건문 ---------------
        function confirm() {
            if (document.getElementById('textarea').value == "") {
                alert("정지 사유를 입력해 주세요.");
                return false;
            }
            return true;
        }
    </script>
</body>
</html>