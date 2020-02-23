<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.newby.classvo.model.vo.*, java.util.*, com.kh.newby.common.PageInfo"%>
<%
	ArrayList<ClassVo2> list = (ArrayList<ClassVo2>)request.getAttribute("list");
%>
<%
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>새로운 취미를 찾아서 NEWBY</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_ClassSchedule.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
    <script src="/semi/resources/jquery/jquery-3.4.1.min.js"></script>
    <script src="../MainPage/js/mainPage.js"></script>

</head>

<body>
    <div id="Allpanel" align="center">
    
        <%@ include file="./common/header.jsp" %>
        
            <!-- 작업하는 컨텐츠 -->
            <div id="newby-body-panel" class="contents-div123" align="left">

                <!--left sidebar-->
				<%@ include file="./common/mypage_sidebar.jsp" %>

                <!--contents-->
                <div id="mn16s" align="center">
                    <br>
                    <h2>수강예정 클래스</h2>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <div>
                            <table>
                                <tr align="center">
                                  <th style="width: 300px">클래스명</th>
                                  <th style="width: 200px">일정</th>
                                  <th style="width: 60px">취소</th>
                                </tr>
                            	<%for(ClassVo2 c : list) {%>
                                <tr align="center">
                                  <input class="hv" type="hidden" value="<%=c.getPayNo() %>">
                                  <input class="hv2" type="hidden" value="<%=c.getClassName() %>">
                                  <input class="hv3" type="hidden" value="<%=c.getPsNo() %>">
                                  
                                  <td><%=c.getClassName() %></td>
                                  <td><%=c.getClassDate() %><span id="divider">|</span><%=c.getClassStartTime() %>~<%=c.getClassEndTime() %>&nbsp;(<%=c.getClassTime() %>시간)</td>
                                  <td><button class="delBtn cancelBtn1sd">취소</button></td>
                                </tr>
                                <%} %>
                             </table>
                             <br>
                             <div>
								<div style="display: inline-block">
									<button class="paging" onclick="location.href='<%=request.getContextPath()%>/cSche.do?currentPage=1'"><<</button>
									<%	if (currentPage <= 1) { %>
									<button class="paging" disabled><</button>
									<% } else { %>
									<button class="paging" onclick="location.href='<%=request.getContextPath()%>/cSche.do?currentPage=<%=currentPage - 1%>'"><</button>
									<% } %>
		
									<% for (int p = startPage; p <= endPage; p++) { if (p == currentPage) { %>
									<button class="paging" disabled><%=p%></button>
									<% } else { %>
									<button class="paging" onclick="location.href='<%=request.getContextPath()%>/cSche.do?currentPage=<%=p%>'"><%=p%></button>
									<% } %>
									<% } %>
									<% if (currentPage >= maxPage) { %>
									<button class="paging" disabled>></button>
									<% } else { %>
									<button class="paging" onclick="location.href='<%=request.getContextPath()%>/cSche.do?currentPage=<%=currentPage + 1%>'">></button>
									<% } %>
									<button class="paging" onclick="location.href='<%=request.getContextPath()%>/cSche.do?currentPage=<%=maxPage%>'">>></button>
								</div>
							 </div>
                         </div>
                    </div>
                </div> 
            </div>
            
            <script type="text/javascript" src="/semi/resources/js/mypage_ClassSchedule.js"></script>
        
        <%@ include file="./common/footer.jsp" %>
        
    </div>
</body>
</html>