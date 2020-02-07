<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>ClassSchedule</title>
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
                    <div id="contentsDivSize29">
                        <div>
                            <table>
                                <thead align="center">
                                    <tr>
                                      <th style="width: 100px">날짜</th>
                                      <th style="width: 300px">클래스명</th>
                                      <th style="width: 100px">취소</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                    <tr>
                                      <td class="td111">2020-01-02</td>
                                      <td>길가다 쓰레기줍기</td>
                                      <td><input type="checkbox"></td>
                                    </tr>
                                    <tr>
                                      <td class="td111">2019-11-18</td>
                                      <td>플라잉 요가</td>
                                      <td><input type="checkbox"></td>
                                    </tr>
                                </tbody>
                            </table>
                            <br>
                          <input class="cancelBtn1sd" type="button" value="취소신청" onclick="cancelClass();">
                          </div>
                    </div>
                </div> 
            </div>
            
            <script type="text/javascript" src="/semi/resources/js/mypage_ClassSchedule.js"></script>
        
        <%@ include file="./common/footer.jsp" %>
        
    </div>
</body>
</html>