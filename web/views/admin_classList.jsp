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
    
    <!-- jQuery -->
    <script src="/semi/resources/js/jquery-3.4.1.min.js"></script>  

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
        <a class="active" href="/semi/classList.ad">개설 클래스</a>
        <a href="/semi/claimList.ad">신고</a>
        <!-- <a href="admin_accountancy.jsp">정산</a> -->
    </div>
    <div class="content">
        <h2>개설 클래스 목록</h2>
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
	                })
	                
	                function search(currentPage) {
	                	$.ajax({
	                		url  : "/semi/searchClass.ad",
	                		type : "get",
	                		data : {
	                			searchValue : $('#search').val(),
	                			currentPage : currentPage
	                		}, 
	                		success : function(result){
	                			// 리스트 
	                			$('#listBody').children().remove();
	                			
	                			var list = result["list"];
	                			
	                			console.log(list);
	                			
	                			for(var i = 0; i < list.length ; i++){
	                				var $tr = $('<tr>');
	                				
	                				var $td1 = $('<td>');
	                				var $td2 = $('<td>');
	                				var $td3 = $('<td>');
	                				var $td4 = $('<td>');
	                				var $td5 = $('<td>');
	                				var $td6 = $('<td>');
	                				var $td7 = $('<td>');
	                				
	                				var $detailBtn = $('<button class="detailBtn">').text('확인'); 
	                				
	                				$td1.text(list[i]["classNo"]);
	                				$td2.text(list[i]["classHostNo"]);
	                				$td3.text(list[i]["classType"]);
	                				$td4.text(list[i]["firstCategory"]);
	                				$td5.text(list[i]["secondCategory"]);
	                				$td6.text(list[i]["thirdCategory"]);
	                				$td7.append($detailBtn);

	                				$tr.append($td1);
	                				$tr.append($td2);
	                				$tr.append($td3);
	                				$tr.append($td4);
	                				$tr.append($td5);
	                				$tr.append($td6);
	                				$tr.append($td7);
	                				
	                				$('#listBody').append($tr);
	                			}
	                			
	                			// 페이징 에리어
	                			$('.pagingArea').empty();
	                			
	                			var pi = result["pi"];
	                			var cp = pi["currentPage"];
	                			var startPage = pi.startPage;
                				var endPage = pi["endPage"];
                				var maxPage = pi.maxPage;
	                				                		
	                			// 버튼 생성 및 삽입
                				// '<<'
	                			var $ttfBtn = $("<button onclick='search(1);'>").text('<<');
	                			$('.pagingArea').append($ttfBtn);
	                			$('.pagingArea').append(' ');
	                			
	                			// '<'
	                			var $backwardBtn = $("<button onclick='search("+ (cp - 1) +")'>").text("<");
	                			$('.pagingArea').append($backwardBtn);
	                			$('.pagingArea').append(' ');
	                			if(currentPage <= 1){
	                				$backwardBtn.attr("disabled", "true");
	                			}
	                			
	                			// 'p'
	                			for(var p = startPage ; p <= endPage ; p++){
	                				var $pBtn = $('<button onclick="search('+ p +')">').text(p)
	                				$('.pagingArea').append($pBtn);
	                				$('.pagingArea').append(' ');
	                				if(p == cp){
	                					$pBtn.attr("disabled", "true");
	                				}
	                			}
	                			
	                			// '>'
	                			var $forwardBtn = $('<button onclick="search('+ (cp + 1)+')">').text('>');
	                			$('.pagingArea').append($forwardBtn);
	                			if(cp == maxPage){
	                				$forwardBtn.attr("disabled","true");
	                			}
	                			
	                			// '>>'
	                			var $tteBtn = $('<button onclick="search(' + maxPage + ')">').text(">>");
	                			$('.pagingArea').append($tteBtn);
	                		}, error : function(){
	                			alert('검색 실패!');
	                		}
	                	})
	                }
                </script>
            </div>
            <table>
                <tr>
                    <th>클래스 번호</th>
                    <th>호스트 번호</th>
                    <th>타입</th>
                    <th>1차</th>
                    <th>2차</th>
                    <th>3차</th>
                    <th>상세정보</th>
                </tr>
                <tbody id="listBody">
               	<% for(ClassVo c : list) {%>
                <tr>
                    <td><%= c.getClassNo() %></td>
                    <td><%= c.getClassHostNo() %></td>
                    <td><%= c.getClassType() %></td>
                    <td><%= c.getFirstCategory() %></td>
                    <td><%= c.getSecondCategory() %></td>
                    <td><%= c.getThirdCategory() %></td>
                    <td>
                    	<button class="detailBtn">확인</button>
                    </td>
                </tr>
                <% } %>
                </tbody>
            </table>
            <script>
            	$('#listBody').mouseenter(function(){
            		$('.detailBtn').click(function(){
                      	var no = $(this).parent().siblings(":eq(0)").text(); 
                      	
                      	location.href="<%=request.getContextPath()%>/classDetail.ad?cno=" + no;
               		 });
            	})
              </script>
        </div>
        
     	<%-- 페이지 처리 --%>
        <div class="pagingArea" align="center">
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
						<button onclick="location.href='<%= request.getContextPath() %>/classList.ad?currentPage=<%= p %>'"><%= p %></button>
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