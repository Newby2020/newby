<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>새로운 취미를 찾아서 NEWBY</title>
    <link rel="stylesheet" href="/semi/resources/css/joinModal.css">
    <link rel="stylesheet" href="/semi/resources/css/LoginModal.css">
    <link rel="stylesheet" href="/semi/resources/css/main-panel.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_h&j-frame.css">
    <link rel="stylesheet" href="/semi/resources/css/mypage_EnrollInClass.css">
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="/semi/resources/jquery/jquery-3.4.1.min.js"></script>


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
                    <h2>클래스 등록</h2>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <form action="<%= request.getContextPath() %>/cInsert.do" method="post" enctype="multipart/form-data">
                            <table>
                                <tbody>
                                    <tr>
                                        <td class="tline1row">클래스명<br><small>(40자 이내)</small></td>
                                        <td  class="tline2row">
           									<input id="input1ske" name="className" type="text" style="font-size: 9pt;" onKeyDown="limitText(this.form.className,this.form.countdown,40);" 
           										onKeyUp="limitText(this.form.className,this.form.countdown,40);" maxlength="40" placeholder="제목에서부터 호스트님의 매력을 마음껏 뿜어내 주세요" required>
           									<font size="2"><input id="input2ske" readonly type="text" size="2" name="countdown" value="0">/40자</font>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">카테고리</td>
                                        <td>
										    <select name="category1" id="sl1" class="sl1" onchange="selectCategory1();" required>
										        <option value="1차" selected>1차</option>
										        <option value="신나는">신나는</option>
										        <option value="차분한">차분한</option>
										    </select>
										    &nbsp;
										    <select name="category2" id="sl2" class="sl1 sl23" onchange="selectCategory2();" required>
										        <option value='' selected>2차</option>
										    </select>
										    <select name="category3" id="sl3" class="sl1 sl23" required>
										        <option value="" selected>3차</option>
										    </select>
                                        </td>
                                    </tr>

                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">클래스 형태</td>
                                        <td>
                                        	<input type="radio" name="classType" value="1:1" id="class-type1" class="classType" onclick="oneNOneCheck();" required>
                                        	<label class="ct" for="class-type1">1:1</label>
                                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										<input type="radio" name="classType" value="그룹" id="class-type2" class="classType" onclick="groupCheck();">
    										<label class="ct" for="class-type2">그룹</label>
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">인원수</td>
                                        <td style="font-size: 9pt"><input id="MaxNum" name="MaxNum" type="text" required>&nbsp;명</td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">1회당 수업시간</td>
                                        <td style="font-size: 9pt"><input id="classTime" name="classTime" type="text" required>&nbsp;시간</td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">1회당 가격<br><small>(최대 백만단위)</small></td>
                                        <td style="font-size: 9pt"><input id="price" name="price" type="text" onkeyup="markPer3digit(this);" maxlength="8" required>&nbsp;원</td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr> 
                                    <tr>
                                        <td class="tline1row">이미지<br><small>(2MB 이하)</small></td>
                                        <td>
                                            <div id="refresh1" style="display: flex;">
    											<img id="blah" src="/semi/resources/images/classBasicImage.png" alt="your image" style="width:120px; height:120px; display: none; border-radius: 5px; border: 3px solid rgb(9, 129, 241);" />
    											&nbsp;&nbsp;
    											<img id="img2" src="/semi/resources/images/reload.png" alt="reload" width="40px" height="40px" onclick="reload1();" style="display: none; cursor: pointer;">
    											<label id="loca-label" for="uploadImg" style="cursor: pointer; margin-top: 40px; margin-bottom: 40px;">
    												<img id="img1" src="/semi/resources/images/imgUploadIcon.png" alt="uploadIcon" width="50px" height="50px">
    											</label>
                                                	<input type='file' id="uploadImg" name="uploadImg" onchange="readURL(this);" style="display: none;"/>
                                            </div>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr> 
                                    <tr>
                                        <td class="tline1row">일정</td>
                                        <td class="addSchedule23">
                                       	    <div id="div11">
										        <input name='cdate' type='date' class='dataCl' required>&nbsp;&nbsp;
										        <input name='stime' type='time' class='dataCl' required>&nbsp;
										        <input id="ss" type='button' class='btn24' value='추가' style="width: 50px;">
										    </div>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">장소</td>
                                        <td>
                                            <input id="basicAddr" name="addr" type="text" placeholder="기본 주소" required>&nbsp;
                                            <input class="btn24" type="button" onclick="SearchAddr();" value="주소 찾기">
                                            <br>
                                            <input id="detailAddr" name="addr" type="text" placeholder="상세 주소" required>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                    	<td class="tline1row tt121">수업 대상</td>
                                    	<td>
                                    		<textarea name="object" id="object1" cols="30" rows="6"
                                    				onKeyDown="limitText(this.form.object,this.form.countdown2,200);" 
            										onKeyUp="limitText(this.form.object,this.form.countdown2,200);" maxlength="200" required></textarea>
            								<font size="2">
	            								<input name="countdown2" id="objectTextCount" class="objectTextCount1" readonly type="text" size="2" value="0" required>
	            								<span style="vertical-align: middle;">/200자</span>
            								</font>
                                    	</td>
                                    </tr>
                            </table>
                            <div id="divFi">
	                            <br><br><br>
	                            <h5 class="tline1row tt121">커리큘럼</h5>
								<%@ include file="common/mypage_EnrollInClassTextarea1.jsp" %>
	                            <br><br><br>
	                            <h5 class="tline1row tt121">수업 소개</h5>
	                            <%@ include file="common/mypage_EnrollInClassTextarea2.jsp" %>
                            </div>
                            <br>
                            <input type="submit" class="finalBtn24" value="등록" onclick="return enrollBtn();">
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" class="finalBtn24" value="취소" onclick="return cancelBtn();">
                            <br><br><br><br><br><br><br><br><br><br>
                        </form>
                    </div>
                </div>
            </div>
        <script type="text/javascript" src="/semi/resources/js/mypage_EnrollInClass.js"></script>
        <%@ include file="./common/footer.jsp" %>
    </div>
</body>
</html>