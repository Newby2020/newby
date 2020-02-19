<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.util.*,
   			com.kh.newby.classvo.model.vo.*,
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
    <title>admin_취소 목록</title>

    <!-- Load icon libarary -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

    <!-- Sidebar & Footer : Basic-->
    <link rel="stylesheet" href="/semi/resources/css/admin_basic.css">
    
    <!-- Table & SearchBar-->
    <link rel="stylesheet" href="/semi/resources/css/admin_table&searchBar.css">

    <!-- The Modal & CheckBox-->
    <link rel="stylesheet" href="/semi/resources/css/admin_modal&checkBox.css">    

</head>

<body>
    <!-- Reposive Sidebar -->
    <div class="sidebar">
        <div>
            <a class="fa fa-home" href="../../MainPage/NewbyMainPage.jsp"></a>
            <a class="index" href="admin_index.jsp">관리자페이지</a>
        </div>
        <a href="/semi/index.ad">Dashboard</a>
        <a href="/semi/userList.ad">사용자</a>
        <a href="/semi/classApplyList.ad">클래스 등록 신청</a>
        <a class="active" href="/semi/classList.ad">개설 클래스</a>
        <a href="/semi/claimList.ad">신고</a>
        <a href="admin_accountancy.jsp">정산</a>

    </div>

    <div class="content">
        <h2>개설 클래스 목록</h2>
        <div style="overflow-x:auto;">
            <!-- searchBar -->
            <div class="searchBar">
                <input type="text" placeholder="Search...">
                <button><i class="fa fa-search"></i></button>
            </div>
            <table>
                <tr>
                    <th>클래스 번호</th>
                    <th>호스트 번호</th>
                    <th>타입</th>
                    <th>1차</th>
                    <th>2차</th>
                    <th>3차</th>
                    <th>타겟</th>
                    <th>상세정보</th>
                </tr>
               	<% for(ClassVo c : list) {%>
                <tr>
                    <td><%= c.getClassNo() %></td>
                    <td><%= c.getClassHostNo() %></td>
                    <td><%= c.getClassType() %></td>
                    <td><%= c.getFirstCategory() %></td>
                    <td><%= c.getSecondCategory() %></td>
                    <td><%= c.getThirdCategory() %></td>
                    <td><%= c.getClassTarget() %></td>
                    <td>
                    	<button id="detailBtn">확인</button>
                    </td>
                </tr>
                <% } %>
            </table>
        </div>
        
        <!-- The Modal -->
		<div id="classDetailModal" class="modal" >
		
		  <!-- Modal content -->
		  <div class="modal-content">
		    <span class="close">&times;</span>
		    <h2>클래스 정보</h2>
	        <div>
	        	<div class="underModal_div">
					<table class="underModal_table">
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
							<tr>
								<td class="tline1row">클래스 형태</td>
								<td>데이터 가져오기</td>
							</tr>
							<tr>
								<td class="tline1row">인원수</td>
								<td>데이터 가져오기</td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="underModal_div2">
					<table class="underModal_table">
						<tbody>
							<tr>
								<td class="tline1row">1회당 수업시간</td>
								<td>데이터 가져오기</td>
							</tr>
							<tr>
								<td class="tline1row">1회당 가격</td>
								<td>데이터 가져오기</td>
							</tr>
							<tr>
								<td class="tline1row">이미지</td>
								<td>데이터 가져오기</td>
							</tr>
							<tr>
								<td class="tline1row">일정</td>
							</tr>
							<tr>
								<td class="tline1row">장소</td>
							</tr>
							<tr>
								<td class="tline1row tt121">수업 대상</td>
							</tr>
						</tbody>
					</table>
				</div>
	        </div>
    		<div style="display : block;">
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
		</div>
		<script>
			// Get the modal
			var modal = document.getElementById("classDetailModal");
			
			// Get the button that opens the modal
			var btn = document.getElementById("detailBtn");
			
			// Get the <span> element that closes the modal
			var span = document.getElementsByClassName("close")[0];
			
			// When the user clicks the button, open the modal 
			btn.onclick = function() {
			  modal.style.display = "block";
			}
			
			// When the user clicks on <span> (x), close the modal
			span.onclick = function() {
			  modal.style.display = "none";
			}
		</script>

        
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
    

    
</body>
</html>