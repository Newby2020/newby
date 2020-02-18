<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.kh.newby.classvo.model.vo.*"%>
<%
	ClassVo c = (ClassVo)request.getAttribute("c");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>
	<script>
    	$('.detailBtn').click(function(){
    	var no = $(this).parent().siblings(":eq(0)").text();
    	/* var no = $(this).parent().siblings("td:eq(0)").text(); */
    	/* console.log(no); */
    			
    	<%-- location.href="<%=request.getContextPath()%>/classDetail.ad?cno="+no; --%>
    	$('.modal').css({display:"block"});

    	}); 
    	
    	function closeModal(){
    		$('#classDetailModal').css("display","none");
    	};	
    </script>
    
	<!-- The Modal -->
	<div id="classDetailModal" class="modal">

		<!-- Modal content -->
		<div class="modal-content">
			<span class="close" onclick="closeModal();">&times;</span>
			<h2>클래스 정보</h2>
			<div>
				<div class="underModal_div">
					<table class="underModal_table">
						<tbody>
							<tr>
								<td class="tline1row">클래스명<br> <small>(40자 이내)</small></td>
								<td><%= c.getClassName() %></td>
							</tr>
							<tr>
								<td></td>
								<td>1차 / 2차 / 3차</td>
							</tr>
							<tr>
								<td class="tline1row">카테고리</td>
								<td><%= c.getFirstCategory() %> / <%= c.getSecondCategory() %> / <%= c.getThirdCategory() %></td>
							</tr>
							<tr>
								<td class="tline1row">클래스 형태</td>
								<td><%= c.getClassType() %></td>
							</tr>
							<tr>
								<td class="tline1row">인원수</td>
								<td><%= c.getClassMaxnum() %></td>
							</tr>
						</tbody>
					</table>
				</div>
				<div class="underModal_div2">
					<table class="underModal_table">
						<tbody>
							<tr>
								<td class="tline1row">1회당 수업시간</td>
								<td><%= c.getClassTime() %></td>
							</tr>
							<tr>
								<td class="tline1row">1회당 가격</td>
								<td><%= c.getClassPrice() %></td>
							</tr>
							<tr>
								<td class="tline1row">이미지</td>
								<td>.</td>
							</tr>
							<tr>
								<td class="tline1row">일정</td>
								<td>.</td>
							</tr>
							<tr>
								<td class="tline1row">장소</td>
								<td></td>
							</tr>
							<tr>
								<td class="tline1row tt121">수업 대상</td>
								<td></td>
							</tr>
						</tbody>
					</table>
				</div>
			</div>
			<div style="display: block;">
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
</body>
</html>