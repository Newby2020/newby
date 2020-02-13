<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>ClassManager</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_ClassManager.css">
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
                    <h2>클래스 관리</h2>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <div>
                            <table>	<!-- 클래스 날짜와 현재 날짜 비교해서 수정취소버튼 생성 분기시켜야해  -->
                                <thead>
                                    <tr>
                                      <th style="width: 150px">날짜</th>
                                      <th style="width: 500px; padding-bottom: 5px;">클래스명</th>
                                      <th style="width: 150px">수정/취소</th>
                                    </tr>
                                </thead>
                                <tbody align="center">
                                	<tr>
                                  		<td colspan=3 style="border-bottom : 1px solid darkgray;"></td>
                                	</tr>
                                    <tr>
                                      <td class="td19">2020-01-02</td>
                                      <td class="td19">길가다가기줍기길가다가기줍줍길가다가기줍줍기길가기길가다가기줍줍길가다가기줍줍</td>
                                      <td class="td19">
	                                      <input class="modify1sd size142" type="button" value="수정">
	                                      <input class="delete1sd size142" type="button" value="취소">
	                                  </td>
                                    </tr>
                                    <tr>
                                      <td class="td19">2020-01-02</td>
                                      <td class="td19" >길가다가기줍기길가다가기줍줍길가다가기줍줍기길가기길가다가기줍줍길가다가기줍줍</td>
                                      <td class="td19">
	                                      <input class="modify1sd size142" type="button" value="수정">
	                                      <input class="delete1sd size142" type="button" value="취소">
	                                  </td>
                                    </tr>
                                </tbody>
                            </table>
                            
                            <!-- 페이징해야 하는 부분 -->
                            <div>
                            </div>
                              
                              
                              
                          </div>
                    </div>
                </div> 
            </div>
            
            <script type="text/javascript" src="/semi/resources/js/mypage_ClassManager.js"></script>
			
        <%@ include file="./common/footer.jsp" %>
        
    </div>
</body>
</html>