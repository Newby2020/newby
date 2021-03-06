<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" 
    import="com.kh.newby.member.model.vo.*, 
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
        <a class="active" href="/semi/userList.ad">사용자</a>
        <a href="/semi/classApplyList.ad">클래스 등록 신청</a>
		<a href="/semi/classList.ad">개설 클래스</a>
        <a href="/semi/claimList.ad">신고</a>
        <!-- <a href="/semi/paymentList.ad">정산</a> -->
    </div>

    <div class="content">
        <h2>사용자 목록</h2>
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
                		search(1);
                	});
                	
    				function search(item){
    					$.ajax({
                			url : "/semi/serchUser.ad",
                			type: "get",
                			data:{
                				searchValue : $("#search").val(),
                				currentPage : item
                			},
                			success : function(data){
                				/* console.log(data); */
                				// 리스트
                				$('#listBody').children().remove();
                				                				
                				var list = data["list"];
                				
                				for(var i = 0; i < list.length; i++){
                					var $tr = $("<tr>"); 
                					
                					var $td1 = $("<td>");
                					var $td2 = $("<td>");
                					var $td3 = $("<td>");
                					var $td4 = $("<td>");
                					var $td5 = $("<td>");
                					var $td6 = $("<td>");
                					var $td7 = $("<td>");
                					
                					$td1.text(list[i]["m_no"]);
                					$td2.text(list[i]["m_name"]);
                					$td3.text(list[i]["m_id"]);
                					$td4.text(list[i]["m_phone"]);
                					$td5.text(list[i]["m_enrollDateStr"]);
                					$td6.text(list[i]["m_mileage"]);
                					$td7.text(list[i]["h_no"]);
                					
                					$tr.append($td1);
                					$tr.append($td2);
                					$tr.append($td3);
                					$tr.append($td4);
                					$tr.append($td5);
                					$tr.append($td6);
                					$tr.append($td7);
                					
                					$('#listBody').append($tr);
                				}
                				
                				//페이징 처리
            					$('.pagingArea').empty();
            					
								var pi = data["pi"];
                				var currentPage = pi["currentPage"];
                				var listCount = pi["listCount"];
                				var limit = pi.limit;
                				var maxPage = pi.maxPage;
                				var startPage = pi.startPage;
                				var endPage = pi["endPage"];
                				
                				// 버튼 생성 및 삽입
                				// '<<'
                				var $ttfBtn = $("<button onclick='search("+ 1 +");'>").text('<<');
                				$('.pagingArea').append($ttfBtn);
                				$('.pagingArea').append(' ');
                				
                				// '<'
                				var $backwardBtn = $("<button onclick='search("+(currentPage -1) +");'>").text('<'); 
                				$('.pagingArea').append($backwardBtn);
                				$('.pagingArea').append(' ');
                				if(currentPage <= 1){
                					$backwardBtn.attr("disabled","true");
                				}
                				
                				// 'p'
                				for(var p = startPage; p <= endPage; p++){
                					if(p == currentPage){
                						var $pBtn = $("<button disabled>").text(p);
                					}else{
                						var $pBtn = $("<button onclick='search("+p+");'>").text(p);
                					}
                					$('.pagingArea').append($pBtn);
                					$('.pagingArea').append(' ');
                				}
                				
                				// '>'
                				var $forwardBtn = $("<button onclick='search("+(currentPage + 1) +");'>").text('>');
                				$('.pagingArea').append($forwardBtn);
                				$('.pagingArea').append(' ');
                				if(currentPage == maxPage){
                					$forwardBtn.attr("disabled","true");
                				}
                				
                				// '>>'
                				var $tteBtn = $("<button onclick='search("+maxPage+");'>").text('>>');
                				
                				$('.pagingArea').append($tteBtn);
                				
                			}, error : function(){
                				alert("검색 실패!");
                			}
                		});
    				}  
                </script>
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
                <tbody id="listBody">
	                <% for(Member m : list) {%>
	                <tr>
	                    <td><%= m.getM_no() %></td>
	                    <td><%= m.getM_name() %></td>
	                    <td><%= m.getM_id() %></td>
	                    <td><%= m.getM_phone() %></td>
	                    <td><%= m.getM_enrollDateStr() %></td>
	                    <td><%= m.getM_mileage() %></td>
	                    <td><%= m.getH_no() %></td>
	                </tr>
	                <% } %>
                </tbody>
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
    </div>
</body>
</html>