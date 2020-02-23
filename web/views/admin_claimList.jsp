<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import= "com.kh.newby.claim.model.vo.*, 
    		 java.util.*, 
    		 com.kh.newby.common.PageInfo"%>
    
<% 
 ArrayList<Claim> list = (ArrayList<Claim>)request.getAttribute("list");
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
    <title>admin_신고 목록</title>

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

    <!-- TODO 왜 파일 분리해서 불러오면 실행이 안되는가.... -->
    <!-- Modal js -->
    <script src="../resources/js/admin_hostReport_modal.js"></script>
</head>
<body>
    <!-- Reposive Sidebar -->
    <div class="sidebar">
        <div>
            <a class="fa fa-home" href="index.jsp"></a>
            <a class="index" href="/semi/index.ad">관리자페이지</a>
        </div>
        <a href="/semi/index.ad">Dashboard</a>
        <a href="/semi/userList.ad">사용자</a>
        <a href="/semi/classApplyList.ad">클래스 등록 신청</a>
		<a href="/semi/classList.ad">개설 클래스</a>
        <a class="active"  href="/semi/claimList.ad">신고</a>
        <a href="/semi/paymentList.ad">정산</a>
    </div>
    <div class="content">
        <h2>신고 리스트</h2>

        <div style="overflow-x:auto;">
            <!-- searchBar -->
            <div class="searchBar">
                <input id="search" type="text" placeholder="Search..." >
                <button id="searchBtn"><i class="fa fa-search"></i></button>
                <script>
	                $('#search').keypress(function(event){
	                    var keycode = (event.keyCode ? event.keyCode : event.which);
	                    if(keycode == '13'){
	                    	$('#searchBtn').trigger("click");
	                    }
	                }); 
                
                	$('#searchBtn').click(function(){
                		$.ajax({
                			url : "/semi/serchClaim.ad",
                			type: "get",
                			data:{
                				searchValue : $("#search").val()
                			},
                			success : function(data){
                			console.log(data);
                				//	 리스트
                				$('#listBody').children().remove();
                				
                				var list = data["list"];
                				console.log("list : "+ list);
                				
                				for(var i = 0; i < list.length; i++){
                					var $tr = $("<tr>"); 
                					
                					var $td1 = $("<td>");
                					var $td2 = $("<td>");
                					var $td3 = $("<td>");
                					var $td4 = $("<td>");
                					var $td5 = $("<td>");
                					var $td6 = $("<td>");
                					var $td7 = $("<td>");
                					var $td8 = $("<td>");
                					var $td9 = $("<td>");
                					
                					$td1.text(list[i]["cmDate"]);
                					$td2.text(list[i]["cmNo"]);
                					$td3.text(list[i]["cmWriterNo"]);
                					$td4.text(list[i]["cmTitle"]);
                					$td5.text(list[i]["status"]);
                					$td6.text(list[i]["handledDate"]);
                					$td7.text(list[i]["suspensionPeriod"]);
                					$td8.text(list[i]["suspensionStartDate"]);
                					$td9.text(list[i]["suspensionEndDate"]);
                					
                					$tr.append($td1);
                					$tr.append($td2);
                					$tr.append($td3);
                					$tr.append($td4);
                					$tr.append($td5);
                					$tr.append($td6);
                					$tr.append($td7);
                					$tr.append($td8);
                					$tr.append($td9);
                					/* console.log($tr); */
                					$('#listBody').append($tr);
                					
                					//페이지 에리어
                					$('.pagingArea').empty();
                				}
                			}, error : function(){
                				alert("검색 실패!");
                			}
                		});
                	});
                </script>
            </div>
            <table>
                <tr>
                    <th>신고일</th>
                    <th>신고 번호</th>
                    <th>신고자 번호</th>
                    <th>신고 이유</th>
                    <th>상태</th>
                    <th>신고처리일</th>
                    <th>정지 기간</th>
                    <th>정지 시작일</th>
                    <th>정지 만료일</th>
                </tr>
                <tbody id="listBody">
                <% for(Claim c : list) {%>
                <tr>
                    <td><%= c.getCmDate() %></td>
                    <td><%= c.getCmNo() %></td>
                    <td><%= c.getCmWriterNo() %></td>
                    <td><%= c.getCmTitle() %></td>
                    <td><%= c.getStatus() %></td>
                    <td>
                    <% if(c.getHandledDate() != null){ %>
                    		<%= c.getHandledDate() %>
                    <% }else { %>
                    		<%= '-' %>
                    <% } %>
                    </td>
                    <td>
                    <% if(c.getSuspensionPeriod() != 100000) { %>
                    		<% if(c.getSuspensionPeriod() == 0) {%>
                    				<%= '-' %>
                    		<% } else { %>
									<%= c.getSuspensionPeriod() %>
                    		<% } %>


                    <% } else { %>
                    		<%= "무기한" %>
                    <% } %>
                    </td>
                    <td>
                    <% if(c.getSuspensionStartDate() != null) { %>
                    		<%= c.getSuspensionStartDate() %>
                    <% }else {%>
                    		<%= '-' %>
                    <% } %>
                    </td>
                    <td>
                    <% if(c.getSuspensionEndDate() != null) {%>
                    		<%= c.getSuspensionEndDate() %>
                    <% }else { %>
                    		<%= '-' %>
                    <% } %>
                    </td>
                </tr>
                <% } %>
                </tbody>
            </table>
        </div>
         <%-- 페이지 처리 --%>
      	<div class="pagingArea" align="center">
      		<button onclick="location.href='<%= request.getContextPath() %>/claimList.ad?currentPage = 1'"><<</button>
      		<% if(currentPage <= 1){ %>
      		<button disabled><</button>
      		<% }else { %>
      		<button onclick="location.href='<%= request.getContextPath() %>/claimList.ad?currentPage= <%= currentPage-1 %>'"><</button>
      		<% } %>
      		
      		<% for(int p = startPage; p <= endPage; p++) { 
      				if(p == currentPage) {
      		%>
      			<button disabled><%= p %></button>
    		<%		}else { %>
    			<button onclick="location.href='<%= request.getContextPath() %>/claimList.ad?currentPage=<%= p %>'"><%= p %></button>
      		<%		} %>
      		<%	} %>
      		
      		<% 	if(currentPage >= maxPage){%>
      		<button disabled>></button>
      		<% }else { %>
      		<button onclick="location.href='<%= request.getContextPath() %>/claimList.ad?currentPage=<%= currentPage + 1 %>'">></button>
      		<% } %>
      		<button onclick="location.href='<%= request.getContextPath() %>/claimList.ad?currentPage=<%= maxPage %>'">>></button>
      	</div>
    </div>
</body>
</html>