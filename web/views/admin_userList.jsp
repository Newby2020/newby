<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="com.kh.newby.Member.model.vo.*, 
    		java.util.*,
    		com.kh.newby.common.PageInfo"%>
<% 
	ArrayList<Member> list = (ArrayList<Member>)request.getAttribute("list");
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
%>    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>admin_사용자 목록</title>

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
            <a class="index" href="/semi/index.ad">관리자페이지</a>
        </div>
        <a href="/semi/index.ad">Dashboard</a>
        <a class="active" href="/semi/userList.ad">사용자</a>
        <a href="/semi/classList.ad">클래스</a>
		<a href="admin_classCancel.jsp">클래스 취소</a>
        <a href="/semi/claimList.ad">신고</a>
        <a href="/semi/claimList.ad">정산</a>
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
     	<%-- 페이지 처리 --%>
		<div class="pagingArea" align="center">
			<button onclick="location.href='<%= request.getContextPath() %>/userList.ad?currentPage=1'"><<</button>
			<%  if(currentPage <= 1){  %>
			<button disabled><</button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/userList.ad?currentPage=<%=currentPage - 1 %>'"><</button>
			<%  } %>
			
			<% for(int p = startPage; p <= endPage; p++){
					if(p == currentPage){	
			%>
				<button disabled><%= p %></button>
			<%      }else{ %>
				<button onclick="location.href='<%= request.getContextPath() %>/userList.ad?currentPage=<%= p %>'"><%= p %></button>
			<%      } %>
			<% } %>
				
			<%  if(currentPage >= maxPage){  %>
			<button disabled>></button>
			<%  }else{ %>
			<button onclick="location.href='<%= request.getContextPath() %>/userList.ad?currentPage=<%=currentPage + 1 %>'">></button>
			<%  } %>
			<button onclick="location.href='<%= request.getContextPath() %>/userList.ad?currentPage=<%= maxPage %>'">>></button>
			
		</div>
		<!--  -->
		
    </div>
</body>
</html>