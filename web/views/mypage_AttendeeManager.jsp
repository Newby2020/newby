<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>AttendeeManager</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_AttendeeManager.css">
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
                    <h2>수강생 관리</h2>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <div>
                            <table>
                                <thead align="center">
                                    <tr>
                                      <th style="width: 150px">날짜</th>
                                      <th style="width: 300px">클래스명</th>
                                      <th style="width: 150px">인원수</th>
                                    </tr>
                                	<tr>
                                  	  <td colspan=4 style="border-bottom : 1px solid darkgray; height: 0px; margin-bottom: 10px"></td>
                                	</tr>
                                </thead>
                                <tbody id="tbody4252" align="center" >
                                    <tr>
                                      <td>2020-01-02</td>
                                      <td>길가다 쓰레기줍기</td>
                                      <td>15 /20</td>
                                    </tr>
                                    <tr>
                                        <td>2019-11-18</td>
                                        <td>플라잉 요가</td>
                                        <td>2 /30</td>
                                    </tr>
                                    <tr>
                                      <td>2019-10-04</td>
                                      <td>연탄 나르기</td>
                                      <td>19 /20</td>
                                    </tr>
                                    <tr>
                                      <td>2019-09-16</td>
                                      <td>안녕 나야</td>
                                      <td>11 /40</td>
                                    </tr>
                                    <tr>
                                      <td>2019-09-08</td>
                                      <td>화성에서 온 나</td>
                                      <td>15 /20</td>
                                    </tr>
                                    <tr>
                                      <td>2019-09-02</td>
                                      <td>연탄 나르기</td>
                                      <td>14 /25</td>
                                    </tr>
                                    <tr>
                                      <td>2019-10-04</td>
                                      <td>자바랑 나랑</td>
                                      <td>1/50</td>
                                    </tr>
                                </tbody>
                            </table>
                          </div>
                    </div>
                </div> 
            </div>
            
            <script type="text/javascript" src="/semi/resources/js/mypage_AttendeeManager.js"></script>

        
        <%@ include file="./common/footer.jsp" %>
        
    </div>
</body>
</html>