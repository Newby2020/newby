<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>EnrollInClass</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_EnrollInClass.css">
    <link href="https://fonts.googleapis.com/css?family=Nanum+GothicNoto+Sans+KR&display=swap" rel="stylesheet">
    <script src="/semi/resources/jquery/jquery-3.4.1.min.js"></script>
    <script src="../MainPage/js/mainPage.js"></script>
    <style>

    </style>
</head>

<body></body>
    <div id="Allpanel" align="center">
    
        <%@ include file="./common/header.jsp" %>
        
        
            <!-- 작업하는 컨텐츠 -->
            <div id="newby-body-panel" class="contents-div123" align="left">

                <!--left sidebar-->
                <div class="sidenavsk">
                  <div id="sidebar-titleso67" align="center">마이페이지</div>
                  <a href="Profile.html">프로필</a>
                  <a href="Mileage.html">마일리지</a>
                  <a href="ClassSchedule.html">수강예정 클래스</a>
                  <a href="PaymentPage.html">결제 내역</a>
                  <a href="WritingReview1.html">후기 작성</a>
                  <button class="dropdown-btnqo">호스트
                      <i id="ci22">≡</i>
                  </button>
                  <div class="dropdown-soxk">
                    <a href="EnrollInClass.html">클래스 등록</a>
                    <a href="ClassManager.html">클래스 관리</a>
                    <a href="AttendeeManager.html">수강생 관리</a>
                  </div>
                </div>

                <!--contents-->
                <div id="mn16s" align="center">
                    <br>
                    <br>
                    <h2>클래스 등록</h2>
                    <br>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <form action="">
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="tline1row">클래스명<br><small>(20자 이내)</small></td>
                                        <td  class="tline2row"><input id="input1ske" type="text" placeholder="제목에서부터 호스트님의 매력을 마음껏 뿜어내 주세요"></td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">카테고리</td>
                                        <td>
                                            <select name="" id="sl1" class="sl">
                                                <option value="" selected>1차</option>
                                                <option value="동적">동적</option>
                                                <option value="정적">정적</option>
                                            </select>
                                            &nbsp;          
                                            <select name="" id="sl2" class="sl">
                                                <option value="" selected>2차</option>
                                                <option value="액티비티">액티비티</option>
                                                <option value="쿠킹">쿠킹</option>
                                                <option value="예술">예술</option>
                                                <option value="교육">교육</option>
                                            </select>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    
                                    <tr>
                                        <td class="tline1row">클래스 형태</td>
                                        <td>
                                            <input type="radio" id="class-type1" name="classType">
                                            <label for="class-type1">1:1 수업</label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" id="class-type2" name="classType">
                                            <label for="class-type2">그룹 수업</label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" id="class-type3" name="classType">
                                            <label for="class-type3">원데이</label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">1회당 수업시간</td>
                                        <td><input id="classTime6" type="text">&nbsp;시간</td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">시간당 가격</td>
                                        <td><input id="commission12" type="text">&nbsp;원</td>
                                    </tr>                              
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">인원수</td>
                                        <td><input id="MaxNoAttendee" type="text">&nbsp;명</td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">커버사진</td>
                                        <td>
                                            <img id="blah" src="http://placehold.it/180" alt="your image"/>
                                            <br>
                                            <input type='file' onchange="readURL(this);" />
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">일정</td>
                                        <td class="addSchedule23">
                                            <input class="date632" type="date">
                                            &nbsp;
                                            <input class="date632" type="time">
                                            &nbsp;~&nbsp;
                                            <input  class="date632"type="time">
                                            &nbsp;&nbsp;
                                            <input class="btn24" type="button" value="일정 추가">
                                        </td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td class="addSchedule23">
                                            <input class="date632" type="date">
                                            &nbsp;
                                            <input class="date632" type="time">
                                            &nbsp;~&nbsp;
                                            <input  class="date632"type="time">&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">장소</td>
                                        <td>
                                            <input id="basicAddr" type="text" placeholder="기본 주소">
                                            &nbsp;&nbsp;
                                            <input class="btn24" type="button" value="주소 찾기">
                                            <br>
                                            <input id="detailAddr" type="text" placeholder="상세 주소">
                                        </td>
                                    </tr>
                            </table>
                            <br><br><br>
                            <h5 class="tline1row textAreaTitle23">수업 소개</h5>
                            <textarea name="" id="" class="centents263425" cols="90" rows="7"></textarea>
                            <br><br>
                            <h5 class="tline1row textAreaTitle23">수업 대상</h5>
                            <textarea name="" id="" class="centents263425" cols="90" rows="7"></textarea>
                            <br><br>
                            <h5 class="tline1row textAreaTitle23">커리큘럼</h5>
                            <textarea name="" id="" class="centents263425" cols="90" rows="7"></textarea>
                            
                            <br><br>
                            <input type="submit" class="finalBtn24" value="등록">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" class="finalBtn24" value="취소">
                            <br><br><br><br><br>
                        </form>
                    </div>
                </div> 
            </div>
            
            <script type="text/javascript" src="/semi/resources/js/mypage_EnrollInClass.js"></script>

        
        <%@ include file="./common/footer.jsp" %>
        
    </div>
</body>
</html>