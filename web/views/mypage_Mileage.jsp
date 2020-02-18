<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.newby.pay.model.vo.*, java.util.*,  java.text.DecimalFormat"%>
    
<%
	DecimalFormat formatter = new DecimalFormat("###,###");
	ArrayList<Payment> list = (ArrayList<Payment>)request.getAttribute("list");
	int mile = list.get(0).getMileage();
	for(Payment c : list){
		System.out.println(c.toString());
	}
	
%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>Mileage</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_Mileage.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
    <script src="../MainPage/js/mainPage.js"></script>

<style>
th{
	height:30px;
	font-size: 11pt;
}

td{
	height: 30px;
	font-size: 9pt;
}
#pastmilek1res{
	font-size: 15pt;
}

</style>
</head>

<body></body>
    <div id="Allpanel" align="center">
    
        <%@ include file="./common/header.jsp" %>
        
            <!-- 작업하는 컨텐츠 -->
            <div id="newby-body-panel" class="contents-div123" align="left">

                <!--left sidebar-->
				<%@ include file="./common/mypage_sidebar.jsp" %>

                <!--contents-->
                <div id="mn16s" align="center">
                    <br>
                    <h2>마일리지</h2>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <div>
                            <div align="center" id="miletitle1sdk" style="font-weight: normal;">나의 마일리지</div>
                            <div align="center">
                              <input type="text" id="mileage1kc" value="<%= formatter.format(mile)%> 원">
                            </div>
                          </div>
                          <br>
                          <br>
                          <br>
                          <div>
                            <table>
                              <thead align="center">
                                <tr>
                                  <th style="font-size:9pt; width: 100px">날짜</th>
                                  <th style="font-size:9pt; width: 400px">클래스명</th>
                                  <th style="font-size:8pt; width: 100px">사용<br>마일리지</th>
                                  <th style="font-size:8pt; width: 100px">적립<br> 마일리지</th>
                                  <th style="font-size:8pt; width: 100px">내용</th>
                                </tr>
                              </thead>
                              <tbody align="center">
                              <%for(Payment c : list){ %>
                                <tr>
                                  <td style="font-size:8pt;"><%=c.getpDate() %></td>
                                  <td style="font-size:8pt;"><%=c.getCName() %></td>
                                  <td style="font-size:8pt;"></td>
                                  <%-- <td>
                                  	<%=c.getM_pMile() %>
                                  </td>
                                  <td>
                                  	<%=c.getM_pSaveMile() %>
                                  </td> --%>
                                </tr>
                                <% } %>
                              </tbody>
                            </table>
                            <br>
                            
                            <!-- 페이징 처리 -->
                            <div id="paging1kjd">

                            </div>
                          </div>
                    </div>
                </div>
            </div>
            <script type="text/javascript" src="/semi/resources/js/mypage_Mileage.js"></script>
        <br><br><br><br><br>
        <%@ include file="./common/footer.jsp" %>
        
    </div>
</body>
</html>