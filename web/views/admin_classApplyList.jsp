<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,
    		com.kh.newby.Class.model.vo.*,
    		com.kh.newby.common.PageInfo"%>
<%
	ArrayList<ClassVo> list = (ArrayList<ClassVo>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int currentPage = pi.getCurrentPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
	int maxPage = pi.getMaxPage();
%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin_클래스 목록</title>

    <!-- Load icon libarary -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Sidebar & Footer : Basic-->
    <link rel="stylesheet" href="/semi/resources/css/admin_basic.css">

    <!-- Table & SearchBar-->
    <link rel="stylesheet" href="/semi/resources/css/admin_table&searchBar.css">

    <!-- The Modal & CheckBox-->
    <link rel="stylesheet" href="/semi/resources/css/admin_modal&checkBox.css">

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
        <h2>신청 목록</h2>
        <div style="overflow-x:auto;">
            <!-- searchBar -->
            <div class="searchBar">
                <input type="text" placeholder="Search...">
                <button><i class="fa fa-search"></i></button>
            </div>
            <table>
                <tr>
                    <th>신청일</th>
                    <th>클래스 번호</th>
                    <th>호스트 번호</th>
                    <th>상태</th>
                    <th>상세정보</th>
                </tr>
                <% for(ClassVo c : list){ %>               
                <tr>
                    <td><%= c.getClassEnrollDate() %></td>
                    <td><%= c.getClassNo() %></td>
                    <td><%= c.getClassHostNo() %></td>
                    <td><%= c.getClassStatus() %></td>
                    <td>
                        <!-- <button id="detailVeiwBtn" class="detailVeiwBtn">양식보기</button> <br> -->
                    </td>
                </tr>
                <% } %>
            </table>
        </div>
        <%-- 페이지 처리 --%>
        <div class="pageArea" align="center">
        	<button onclick="location.href'<%= request.getContextPath() %>/classList.ad?currentPage = 1"><<</button>
			<% if(currentPage <= 1) {%>
					<button disabled><</button>
 			<% }else { %>
 					<button onclick="location.href='<%= request.getContextPath() %>/classList.ad?currentPage= <%= currentPage-1 %>'"><</button>
 			<% } %>
 			
 			<% for(int p = startPage; p<=endPage; p++) { 
 					if(p == currentPage){ %>
 						<button disabled><%= p %></button>
			<% 		} else{ %>
						<button onclick="location.href='<%= request.getContextPath() %>/classList.ad?currentPage=<%= p %>'"<%= p %>></button>
			<% 		} %>
 			<% } %>
 			
 			<% if(currentPage >= maxPage){ %>
 					<button disabled>></button>
 			<% } else{ %>
 					<button onlick="location.href='<%= request.getContextPath() %>/classList.ad?currentPage=<%=currentPage + 1 %>'">></button>
 			<% } %>
 			<button onclick="location.href='<%= request.getContextPath() %>/classList.ad?currentPage=<%= maxPage %>'">>></button>
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