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
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="/semi/resources/jquery/jquery-3.4.1.min.js"></script>


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
           									<input id="input1ske" name="limitedtextfield" type="text" style="font-size: 9pt;" onKeyDown="limitText(this.form.limitedtextfield,this.form.countdown,40);" 
           										onKeyUp="limitText(this.form.limitedtextfield,this.form.countdown,40);" maxlength="40" placeholder="제목에서부터 호스트님의 매력을 마음껏 뿜어내 주세요">
           									<font size="2"><input id="input2ske" readonly type="text" size="2" name="countdown" value="0">/40자</font>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">카테고리</td>
                                        <td>
										    <select name="category1" id="sl1" class="sl1" onchange="selectCategory1();">
										        <option value="1차" selected>1차</option>
										        <option value="동적">동적</option>
										        <option value="정적">정적</option>
										    </select>
										    &nbsp;          
										    <select name="category2" id="sl2" class="sl1 sl23" onchange="selectCategory2();">
										        <option value='' selected>2차</option>
										    </select>
										    <select name="category3" id="sl3" class="sl1 sl23">
										        <option value="" selected>3차</option>
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
                                        <td class="tline1row">이미지<br><small>(2MB 이하)</small></td>
                                        <td>
                                                <div id="imageUpload12" style="display: flex;">
											        <label for="files" style="cursor: pointer; margin-top: 10px;">
											            <img src="/semi/resources/images/imgUploadIcon.png" alt="uploadIcon" width="62px" height="62px">    <!-- 이미지업로드아이콘 경로 제대로 설정해야함 -->
											            <!-- <span style="font-size: 9pt;">이미지 4개 이하</span> -->
											        </label>
											        <input type='file' id="files" accept="image/*" onclick="displayPreview();" multiple/>
													&nbsp;&nbsp;
											        <div id="pView" style="display: none; margin: 10px;">
											            <!-- <div style="font-size: 9pt; margin-top: 3px;">첨부파일&nbsp;&nbsp;&nbsp;</div>--><div id="result" style="border-radius: 3px; border: 1px solid #ebeef3; width: 257px; height: 62px; background-color: #F8F8F8; overflow: hidden; "></div>
											        </div>
											    </div>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr> 
                                    <tr>
                                        <td class="tline1row">기간</td>
                                        <td id="modiTd" class="addSchedule23">
                                        	<span style="font-size: 10pt;">원데이</span>&nbsp;&nbsp;
                                            <input class="dataCl" name="classDate" type="date">&nbsp;&nbsp;
                                            <input class="btn24" type="button" value="기간 설정" onclick="increasePeriod();">
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
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                    	<td class="tline1row tt121">수업 대상</td>
                                    	<td>
                                    		<textarea name="object1" id="object1" cols="30" rows="5" onKeyDown="limitText(this.form.object1,this.form.countdown2,200);" 
            										onKeyUp="limitText(this.form.object1,this.form.countdown2,200);" maxlength="200"></textarea>&nbsp;
            								<font size="2"><input id="objectTextCount" class="objectTextCount1" readonly type="text" size="2" name="countdown2" value="0">
            								<span style="vertical-align: middle;">/200자</span></font>
                                    	</td>
                                    </tr>
                            </table>
                            <div id="divFi">
	                            <br><br>
	                            <h5 class="tline1row tt121">커리큘럼</h5>
								<%@ include file="common/mypage_EnrollInClassTextarea1.jsp" %>
	                            <br><br><br>
	                            <h5 class="tline1row tt121">수업 소개</h5>
	                            <%@ include file="common/mypage_EnrollInClassTextarea2.jsp" %>
                            </div>
                            <br>
                            <input type="submit" class="finalBtn24" value="등록">
                            &nbsp;&nbsp;&nbsp;&nbsp;
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