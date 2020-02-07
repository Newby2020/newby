<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
                    <h2>마일리지 내역</h2>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <div>
                            <div align="center" id="miletitle1sdk">현재 마일리지</div>
                            <div align="center">
                              <input type="text" id="mileage1kc" value="8,000,000원">
                            </div>
                          </div>
                          <br>
                          <br>
                          <br>
                          <br>
                          <br>
                          <div>
                            <h4 id="pastmilek1res">마일리지 내역</h4>
                            <table>
                              <thead align="center">
                                <tr>
                                  <th style="width: 100px">날짜</th>
                                  <th style="width: 300px">클래스명</th>
                                  <th style="width: 100px">내용</th>
                                </tr>
                              </thead>
                              <tbody align="center">
                                <tr>
                                  <td>2020-01-02</td>
                                  <td>길가다 쓰레기줍기</td>
                                  <td>+5,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-11-18</td>
                                  <td>플라잉 요가</td>
                                  <td>+7,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-10-04</td>
                                  <td>연탄 나르기</td>
                                  <td>+2,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-09-16</td>
                                  <td>안녕 나야</td>
                                  <td>+9,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-09-08</td>
                                  <td>화성에서 온 나</td>
                                  <td>+2,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-09-02</td>
                                  <td>연탄 나르기</td>
                                  <td>+4,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-10-04</td>
                                  <td>자바랑 나랑</td>
                                  <td>+2,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-10-04</td>
                                  <td>너는 누구니?</td>
                                  <td>+8,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-10-04</td>
                                  <td>반가워 다들</td>
                                  <td>+4,000 적립</td>
                                </tr>
                                <tr>
                                  <td>2019-10-04</td>
                                  <td>솔로 티내기</td>
                                  <td>+6,000 적립</td>
                                </tr>
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