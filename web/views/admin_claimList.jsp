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
    <!-- <script src="../resources/js/admin_hostReport_modal.js"></script> -->
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
        <!-- <a href="/semi/paymentList.ad">정산</a> -->
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
	                    	search(1);
	                    }
	                }); 
	                
	                $('#searchBtn').click(function(){
	                	search(1);
	                });
	                
	                function search(currentPage){
	                	$.ajax({
	                		url  : "/semi/serchClaim.ad",
	                		type : "get",
	                		data : {
	                			searchValue : $('#search').val(),
	                			currentPage : currentPage
 	                		}, 
 	                		success : function(result) {
 	                			// 리스트 
 	                			$('#listBody').children().remove();
 	                			
 	                			var list = result["list"];
 	                			
 	                			console.log(list);
 	                			
 	                		
 	                			for(var i = 0 ; i < list.length ; i++){
 	                				var $tr = $('<tr>');
 	                				
 	                				var $td1 = $('<td>');
 	                				var $td2 = $('<td>');
 	                				var $td3 = $('<td>');
 	                				var $td4 = $('<td>');
 	                				var $td5 = $('<td>');
 	                				var $td6 = $('<td>');
 	                				var $td7 = $('<td>');
 	                				var $td8 = $('<td>');
 	                				var $td9 = $('<td>');
 	                				
 	                				$td1.append(list[i]['cmDateStr']);
 	                				$td2.append(list[i]['cmNo']);
 	                				$td3.append(list[i]['cmWriterNo']);
 	                				$td4.append(list[i]['cmTitle']);
 	                				$td5.append(list[i]['status']);
 	                				$td6.append(list[i]['handledDateStr']);
 	                				$td7.append(list[i]['suspensionPeriodStr']);
 	                				$td8.append(list[i]['suspensionStartDateStr']);
 	                				$td9.append(list[i]['suspensionEndDateStr']);
 	                				
 	                				$tr.append($td1);
 	                				$tr.append($td2);
 	                				$tr.append($td3);
 	                				$tr.append($td4);
 	                				$tr.append($td5);
 	                				$tr.append($td6);
 	                				$tr.append($td7);
 	                				$tr.append($td8);
 	                				$tr.append($td9);
 	                				
 	                				$('#listBody').append($tr);

 	                				
 	                			}

 	                			// 페이징 에리어 
 	                			$('.pagingArea').empty();
 	                			
 	                			var pi = result["pi"];
 	                			var cp = pi["currentPage"];
 	                			var startPage = pi["startPage"];
 	                			var maxPage = pi["maxPage"];
 	                			
 	                			
 	                			console.log(maxPage);
 	                			console.log(startPage);
 	                			
 	                			// 버튼 생성 및 삽입
                				// '<<'
 	                			var $ttfBtn = $('<button onclick="search(1)">').text('<<');
 	                			$('.pagingArea').append($ttfBtn);
 	                			$('.pagingArea').append(' ');
 	                			if(cp == 1){
 	                				$ttfBtn.attr("disabled","true");
 	                			}
 	                			
 	                			// '<'
 	                			var $backwordBtn = $('<button onclick="search('+ (cp - 1) +')">').text('<');
 	                			$('.pagingArea').append($backwordBtn);
 	                			$('.pagingArea').append(' ');
 	                			if(cp <= 1){
 	                				$backwordBtn.attr("disabled","true");
 	                			}
 	                			
 	                			// 'p'
 	                			for(var p = startPage ; p <= maxPage ; p++){
 	                				var $pBtn = $('<button onclick="search('+ p +')">').text(p);
 	                				$('.pagingArea').append($pBtn);
 	                				$('.pagingArea').append(' ');
 	                				if(p == cp){
 	                					$pBtn.attr("disabled","true");
 	                				}
 	                			}
 	                			
 	                			// '>'
 	                			var $forwardBtn = $('<button onclick="search('+ (cp + 1) +')">').text('>');
 	                			$('.pagingArea').append($forwardBtn);
 	                			$('.pagingArea').append(' ');
 	                			if(cp == maxPage){
 	                				$forwardBtn.attr("disabled","true");
 	                			}
 	                			
 	                			// '>'
 	                			var $tteBtn = $('<button onclick="search('+ maxPage +')">').text('>>');
 	                			$('.pagingArea').append($tteBtn);
 	                			if(cp == maxPage){
 	                				$tteBtn.attr("disabled","true");
 	                			}
 	                			
 	                			
 	                			
 	                			
 	                		},
 	                		error : function() {
 	                			alert("검색 실패!");
 	                		}
	                		
	                	})
	                } 
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
                    <td><%= c.getCmDateStr() %></td>
                    <td><%= c.getCmNo() %></td>
                    <td><%= c.getCmWriterNo() %></td>
                    <td><%= c.getCmTitle() %></td>
                    <td><%= c.getStatus() %></td>
                    <td><%= c.getHandledDateStr() %></td>
                    <td><%= c.getSuspensionPeriodStr() %></td>
                    <td><%= c.getSuspensionStartDateStr() %></td>
                    <td><%= c.getSuspensionEndDateStr() %></td>
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