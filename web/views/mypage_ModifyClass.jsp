<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.kh.newby.classvo.model.vo.*, java.util.*,  java.text.DecimalFormat"%>
    
<%
	DecimalFormat form = new DecimalFormat("###,###");
	String cno = request.getParameter("cno");
	ArrayList<ClassVo2> list = (ArrayList<ClassVo2>)request.getAttribute("list");
	String cname = list.get(0).getClassName();
	String cate1 = list.get(0).getFirstCategory(); 
	String cate2 = list.get(0).getSecondCategory();
	String cate3 = list.get(0).getThirdCategory();
	String ctype = list.get(0).getClassType();
	int maxnum = list.get(0).getClassMaxnum();
	int ctime = list.get(0).getClassTime();
	int cprice = list.get(0).getClassPrice();
	String img = list.get(0).getClassImg();
	String loca = list.get(0).getClassLocation();
	String target = list.get(0).getClassTarget();
	String curri = list.get(0).getClassCurriculum();
	String intro = list.get(0).getClassIntro();
	String cdate = list.get(0).getClassDate();
	String cstartime = list.get(0).getClassStartTime();
	String[] location = loca.split(",");
	String location1 = location[0];
	String location2 = location[1];
/* 	System.out.println(cname);
	System.out.println(cate1);
	System.out.println(cate2);
	System.out.println(cate3);
	System.out.println(ctype);
	System.out.println(maxnum);
	System.out.println(ctime);
	System.out.println(cprice);
	System.out.println(img);
	System.out.println(location);
	System.out.println(target);
	System.out.println(curri);
	System.out.println(intro); */
%>
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
                    <h2>클래스 수정</h2>
                    <hr id="hrSet53">
                    <br>
                    <br>
                    <div id="contentsDivSize29">
                        <form action="<%= request.getContextPath() %>/cUpdate.do" method="post" enctype="multipart/form-data">
                        
                        	<!-- 클래스번호 전송 -->
                            <table>
                                <tbody>
                                    <tr>
                                       <td class="tline1row">
                                       	클래스명<br><small>(40자 이내)</small>
			                        	<input id="cno" type="hidden" name="cno" value="<%=cno%>">
                                       </td>
                                       <td class="tline2row">
          									<input id="input1ske" name="className" type="text" style="font-size: 9pt;"
          										onKeyDown="limitText(this.form.className,this.form.countdown,40);" 
          										onKeyUp="limitText(this.form.className,this.form.countdown,40);" maxlength="40"
          										placeholder="제목에서부터 호스트님의 매력을 마음껏 뿜어내 주세요" value="<%=cname %>" required>
          									<font size="2"><input id="input2ske" readonly type="text" size="2" name="countdown" value="0">/40자</font>
                                       </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">카테고리</td>
                                        <td>
										    <select name="category1" id="sl1" class="sl1" onchange="selectCategory1();">
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
                                    
                                    
                                    <%if(ctype.equals("그룹")){ %>
                                    <tr>
                                        <td class="tline1row">클래스 형태</td>
                                        <td>
                                        	<input type="radio" name="classType" value="1:1" id="class-type1" class="classType" onclick="oneNOneCheck();" required>
                                        	<label class="ct" for="class-type1">1:1</label>
                                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										<input type="radio" name="classType" value="그룹" id="class-type2" class="classType" onclick="groupCheck();" checked required>
    										<label class="ct" for="class-type2">그룹</label>
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">인원수</td>
                                        <td style="font-size: 9pt"><input id="MaxNum" name="MaxNum" type="text" style="background-color: white;" value="<%=maxnum %>" required>&nbsp;명</td>
                                    </tr>
                                    <%} else {%>
                                    <tr>
                                        <td class="tline1row">클래스 형태</td>
                                        <td>
                                        	<input type="radio" name="classType" value="1:1" id="class-type1" class="classType" onclick="oneNOneCheck();" checked required>
                                        	<label class="ct" for="class-type1">1:1</label>
                                        	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    										<input type="radio" name="classType" value="그룹" id="class-type2" class="classType" onclick="groupCheck();" required>
    										<label class="ct" for="class-type2">그룹</label>
    										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">인원수</td>
                                        <td style="font-size: 9pt"><input id="MaxNum" name="MaxNum" type="text" style="background-color: #f1f1f1;" value=1   required>&nbsp;명</td>
                                    </tr>
                                    <%} %>
                                    
                                    
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">1회당 수업시간</td>
                                        <td style="font-size: 9pt"><input id="classTime" name="classTime" type="text" value="<%=ctime %>" required>&nbsp;시간</td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">1회당 가격<br><small>(최대 백만단위)</small></td>
                                        <td style="font-size: 9pt"><input id="price" name="price" type="text" value="<%=form.format(cprice) %>" maxlength="8" onkeyup="markPer3digit(this);" required>&nbsp;원</td>
                                    </tr>
                                    <tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">이미지<br><small>(2MB 이하)</small></td>
                                        <td>
                                            <div id="refresh1" style="display: flex;">
    											<img id="blah" src="/semi/resources/uploadImg/<%=img %>" alt="your image" style="width:120px; height:120px; display: block; border-radius: 5px; border: 3px solid rgb(9, 129, 241);" />
    											&nbsp;&nbsp;
    											<img id="img2" src="/semi/resources/images/reload.png" alt="reload" width="40px" height="40px" onclick="reload1();" style="display: block; cursor: pointer; margin-top: 40px;">
    											
    											<label id="loca-label" for="uploadImg" style="cursor: pointer; margin-top: 40px; margin-bottom: 40px;">
    												<img id="img1" src="/semi/resources/images/imgUploadIcon.png" alt="uploadIcon" width="50px" height="50px" style="display: none;">
    											</label>
                                                	<input type='file' id="uploadImg" name="uploadImg" onchange="readURL(this);" style="display: none;"/>
                                            
                                            </div>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">일정</td>
                                        <td class="addSchedule23" style="display: flex;">
                                       	    <div id="div11">
                                       	    	<div>
                                       	    		<input name='cdate' type='date' class='dataCl' value="<%=cdate %>" required>&nbsp;
											        <input name='stime' type='time' class='dataCl' value="<%=cstartime %>" required>&nbsp;&nbsp;
                                       	    	</div>
                                       	    	<%for(ClassVo2 c : list){ %>
	                                       	    	<%if(c != list.get(0)){ %>
	                                       	    	<div>
												        <input name='cdate' type='date' class='dataCl' value="<%=c.getClassDate() %>" required>&nbsp;
												        <input name='stime' type='time' class='dataCl' value="<%=c.getClassStartTime() %>" required>&nbsp;
												        <img id="delImg" class="item1" src="/semi/resources/images/deleteImg.png" alt="xIcon" style="margin-bottom: 2px;"><br>                                       	    	
	                                       	    	</div>
	                                       	    	<%} %>
										        <%} %>
										    </div>
										    <div>
										        <input id="ss" type='button' class='btn24' value='추가' style="width: 50px; margin-top: 7px;">
										    </div>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                        <td class="tline1row">장소</td>
                                        <td>
                                            <input id="basicAddr" name="addr" type="text" placeholder="기본 주소" value="<%=location1 %>" required>&nbsp;
                                            <input class="btn24" type="button" onclick="SearchAddr();" value="주소 찾기">
                                            <br>
                                            <input id="detailAddr" name="addr" type="text" placeholder="상세 주소" value="<%=location2 %>" required>
                                        </td>
                                    </tr>
                                    <tr><td><br></td></tr><tr><td><br></td></tr>
                                    <tr>
                                    	<td class="tline1row tt121">수업 대상</td>
                                    	<td>
                                    		<textarea name="object" id="object1" cols="30" rows="6"
                                    				onKeyDown="limitText(this.form.object,this.form.countdown2,200);" 
            										onKeyUp="limitText(this.form.object,this.form.countdown2,200);" maxlength="200" style="padding:7px; "required><%=target %></textarea>
            								<font size="2">
	            								<input name="countdown2" id="objectTextCount" class="objectTextCount1" readonly type="text" size="2" value="0" required>
	            								<span style="vertical-align: middle;">/200자</span>
            								</font>
                                    	</td>
                                    </tr>
                            </table>
                            <div id="divFi">
	                            <br><br>
	                            <h5 class="tline1row tt121">커리큘럼</h5>
								<jsp:include page="common/mypage_ModifyClassTextarea1.jsp">
									<jsp:param value="<%=curri %>" name="curri"/>
								</jsp:include>
	                            <br><br><br>
	                            <h5 class="tline1row tt121">수업 소개</h5>
	                            <jsp:include page="common/mypage_ModifyClassTextarea2.jsp">
	                            	<jsp:param value="<%=intro %>" name="intro"/>
	                            </jsp:include>
                            </div>
                            <br>
                            <input type="submit" class="finalBtn24" value="수정" onclick="return updateBtn();" >
                            &nbsp;&nbsp;&nbsp;&nbsp;
                            <input type="reset" class="finalBtn24" value="취소" onclick="return cancelBtn1();">
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