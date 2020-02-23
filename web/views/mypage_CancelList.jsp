<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.newby.pay.model.vo.*, java.util.*, java.text.DecimalFormat, com.kh.newby.common.PageInfo"%>
    
<%
	ArrayList<Payment> list = (ArrayList<Payment>)request.getAttribute("list");

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
    <title>CancelList</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_cancelList.css">
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
                    <h2>취소 내역</h2>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <div>
                            <table>
                                <tr align="center">
                                  <th style="width: 150px;">취소 날짜</th>
                                  <th style="width: 300px;">클래스명</th>
                                  <th style="width: 200px;">일정</th>
                                  
                                  </tr>
                                
                                <%for(Payment p : list){ %>
                                <tr align="center">
                                  <td><%=p.getCancelDate() %></td>
                                  <td><%=p.getcName() %></td>
                                  <td><%=p.getcDate() %><span id="divider">|</span><%=p.getcStartTime() %>~<%=p.getcEndTime() %>&nbsp;(<%=p.getcTime() %>시간)</td>
                                </tr>
                                <%} %>
                                
                            </table>
                            <br>
							<div>
								<div style="display: inline-block">
									<button class="paging" onclick="location.href='<%=request.getContextPath()%>/cancelList.do?currentPage=1'"><<</button>
									<%	if (currentPage <= 1) { %>
									<button class="paging" disabled><</button>
									<% } else { %>
									<button class="paging" onclick="location.href='<%=request.getContextPath()%>/cancelList.do?currentPage=<%=currentPage - 1%>'"><</button>
									<% } %>
		
									<% for (int p = startPage; p <= endPage; p++) { if (p == currentPage) { %>
									<button class="paging" disabled><%=p%></button>
									<% } else { %>
									<button class="paging" onclick="location.href='<%=request.getContextPath()%>/cancelList.do?currentPage=<%=p%>'"><%=p%></button>
									<% } %>
									<% } %>
									<% if (currentPage >= maxPage) { %>
									<button class="paging" disabled>></button>
									<% } else { %>
									<button class="paging" onclick="location.href='<%=request.getContextPath()%>/cancelList.do?currentPage=<%=currentPage + 1%>'">></button>
									<% } %>
									<button class="paging" onclick="location.href='<%=request.getContextPath()%>/cancelList.do?currentPage=<%=maxPage%>'">>></button>
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