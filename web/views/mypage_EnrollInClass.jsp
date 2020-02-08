<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>EnrollInClass</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_EnrollInClass.css">
    <script src="/semi/resources/jquery/jquery-3.4.1.min.js"></script>
    <script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>

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
                    <h2>클래스 등록</h2>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <form action="">
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="tline1row">클래스명<br><small>(40자 이내)</small></td>
                                        <td  class="tline2row">
	                                        <form name="myform">
            									<input id="input1ske" style="font-size: 9pt;" name="limitedtextfield" type="text" onKeyDown="limitText(this.form.limitedtextfield,this.form.countdown,40);" 
            										onKeyUp="limitText(this.form.limitedtextfield,this.form.countdown,40);" maxlength="40" placeholder="제목에서부터 호스트님의 매력을 마음껏 뿜어내 주세요">
            									<font size="2"><input id="input2ske" readonly type="text" size="2" name="countdown" value="0">/40자</font>
        									</form>
                                        </td>
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
                                                <option value="" selected>2-1차</option>
                                                <option value="액티비티">액티비티</option>
                                                <option value="쿠킹">쿠킹</option>
                                                <option value="예술">예술</option>
                                                <option value="교육">교육</option>
                                            </select>
                                            &nbsp;          
                                            <select name="" id="sl2" class="sl">
                                                <option value="" selected>2-2차</option>
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
                                            <label class="ct" for="class-type1">1:1 수업</label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" id="class-type2" name="classType">
                                            <label class="ct" for="class-type2">그룹 수업</label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="radio" id="class-type3" name="classType">
                                            <label class="ct" for="class-type3">원데이</label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">1회당 수업시간</td>
                                        <td style="font-size: 9pt"><input id="classTime6" type="text">&nbsp;시간</td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">시간당 가격</td>
                                        <td style="font-size: 9pt"><input id="commission12" type="text">&nbsp;원</td>
                                    </tr>                              
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">인원수</td>
                                        <td style="font-size: 9pt"><input id="MaxNoAttendee" type="text">&nbsp;명</td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">커버사진<br><small>(2MB 이하)</small></td>
                                        <td>
                                            <img id="blah" src="http://placehold.it/180" alt="your image"/>
                                            <br>
                                            <input type='file' onchange="readURL(this);" multiple>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    
                                    <tr>
                                        <td class="tline1row">일정</td>
                                        <td id="sss" class="addSchedule23">
                                            <input class="date632" name="classDate" type="date">
                                            &nbsp;
                                            <input class="date632" name="ClassStartTime" type="time">
                                            &nbsp;~&nbsp;
                                            <input  class="date632" name="ClassFinishTime" type="time">&nbsp;&nbsp;
                                            &nbsp;&nbsp;
                                            <input class="btn24" type="button" value="일정 추가" onclick="addSchedule();">
                                        </td>
                                    </tr>

                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">장소</td>
                                        <td>
                                            <input id="zipCode13" type="text" placeholder="우편번호">
                                            &nbsp;
                                            <input class="btn24" type="button" onclick="SearchAddr();" value="주소 찾기">
                                            <br>
                                            <input id="basicAddr" name="basicAddr" type="text" placeholder="기본 주소">
                                            <br>
                                            <input id="detailAddr" name="detailAddr" type="text" placeholder="상세 주소">
                                        </td>
                                    </tr>
                            </table>
                            <br><br><br>
                            <h5 class="tline1row textAreaTitle23">수업 소개</h5>
                            <textarea name="" id="" class="centents263425" cols="80" rows="7"></textarea>
                            <br><br>
                            <h5 class="tline1row textAreaTitle23">수업 대상</h5>
                            <textarea name="" id="" class="centents263425" cols="80" rows="7"></textarea>
                            <br><br>
                            <h5 class="tline1row textAreaTitle23">커리큘럼</h5>
                            <textarea name="" id="" class="centents263425" cols="80" rows="7"></textarea>
                            
                            <br><br><br>
                            <input type="submit" class="finalBtn24" value="등록">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" class="finalBtn24" value="취소">
                            <br><br><br><br><br>
                        </form>
                    </div>
                </div> 
            </div>
            
            <script type="text/javascript" src="/semi/resources/js/mypage_EnrollInClass.js"></script>
			<script>
    function SearchAddr() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('zipCode13').value = data.zonecode;
                document.getElementById("basicAddr").value = addr;
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("detailAddr").focus();
            }
        }).open();
    }
</script>
        
        <%@ include file="./common/footer.jsp" %>
        
    </div>
</body>
</html>