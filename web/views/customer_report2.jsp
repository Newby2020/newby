<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="com.kh.newby.common.PageInfo, com.kh.newby.claim.model.vo.*, java.util.*"%>
<%

ArrayList<Claim> list = (ArrayList<Claim>) request.getAttribute("list");
PageInfo pi = (PageInfo)request.getAttribute("pi");
int listCount = pi.getListCount();
int currentPage = pi.getCurrentPage();
int maxPage = pi.getMaxPage();
int startPage = pi.getStartPage();
int endPage = pi.getEndPage(); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Report</title>
</head>
<body>
	<table>
		<tr>
			<th>클래스 명</th>
			<th>선택하기</th>
		</tr>
		<%
			for(Claim c : list){// 페이징 처리
		%>
		<tr>
			<td><%= c.getCmClassNo() %></td>
			<td><input type="radio"></td>
		</tr>
		<%
			}
		%>
	</table>
	<input type="submit" value="선택하기">

	<!-- 페이징 -->
	<div>
		<div style="display: inline-block">
			<button class="PaBtn"
				onclick="location.href='<%=request.getContextPath()%>/inquirySelectList.io?currentPage=1'"><<</button>
			<%	if (currentPage <= 1) { %>
			<button class="PaBtn" disabled><</button>
			<% } else { %>
			<button class="PaBtn"
				onclick="location.href='<%=request.getContextPath()%>/inquirySelectList.io?currentPage=<%=currentPage - 1%>'"><</button>
			<% } %>

			<% for (int p = startPage; p <= endPage; p++) { if (p == currentPage) { %>
			<button class="PaBtn" disabled><%=p%></button>
			<% } else { %>
			<button class="PaBtn"
				onclick="location.href='<%=request.getContextPath()%>/inquirySelectList.io?currentPage=<%=p%>'"><%=p%></button>
			<% } %>
			<% } %>
			<% if (currentPage >= maxPage) { %>
			<button class="PaBtn" disabled>></button>
			<% } else { %>
			<button class="PaBtn"
				onclick="location.href='<%=request.getContextPath()%>/inquirySelectList.io?currentPage=<%=currentPage + 1%>'">></button>
			<% } %>
			<button class="PaBtn"
				onclick="location.href='<%=request.getContextPath()%>/inquirySelectList.io?currentPage=<%=maxPage%>'">>></button>

		</div>
	</div>
</body>
</html>