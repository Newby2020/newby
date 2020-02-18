<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"
	import="java.util.*, com.kh.newby.category.model.vo.*, com.kh.newby.common.*"%>
<% 
	ArrayList<categoryVo> caList = (ArrayList<categoryVo>)request.getAttribute("caList"); 
	PageInfo pi = (PageInfo)request.getAttribute("pi");
	int listCount = pi.getListCount();
	int currentPage = pi.getCurrentPage();
	int maxPage = pi.getMaxPage();
	int startPage = pi.getStartPage();
	int endPage = pi.getEndPage();
%>

<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<title>새로운 취미를 찾아서 Newby</title>
<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
<link rel="stylesheet" href="/semi/resources/css/jquery-ui.css">
<link rel="stylesheet" href="/semi/resources/css/category_sh.css">
<script src="/semi/resources/js/jquery-1.12.4.js"></script>
<script src="/semi/resources/js/jquery-ui.js"></script>
<script src="/semi/resources/js/category-sh.js"></script>

<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Noto+Sans+KR&display=swap"
	rel="stylesheet">

<style>
* {
	font-family: 'Noto Sans KR', sans-serif;
}
</style>
</head>

<body>

	<div id="Allpanel" align="center">
		<%@ include file="./common/header.jsp"%>
		<%@ include file="./common/cate.jsp"%>
		<!-- 작업하는 컨텐츠 -->
		<div id="newby-body-panel" style="max-width: 1080px">
			<!-- Head Category Navi -->
			<div class="head_class_navi">
				<div class="cl_title">
					<br>
					<div class="cate_list">
						<ul id="shcaul1">
							<li class="cate_tt_sh" id="title0"><a
								href="/semi/selectList.ca?caType=ca0">
									<div id="cate0" style="font-weight: 600;">
										<div class="tt_circle" id="ttc0"></div>
										신나는
									</div>
							</a></li>
							<li class="cate_tt_sh1"><a>
									<div id="cate0w"></div> <!--간격용 li-->
							</a></li>
							<li class="cate_tt_sh" id="title1"><a
								href="/semi/selectList.ca?caType=ca1">
									<div id="cate1">
										<div class="tt_circle" id="ttc1" style="visibility: hidden;"></div>
										차분한
									</div>
							</a></li>
							<li class="cate_tt_sh1"><a>
									<div id="cate1w"></div>
							</a></li>

							<br>
							<br>
							<hr>
							<br>
							<li class="cate_tt_sh" id="title2"><a
								href="/semi/selectList.ca?caType=ca2">
									<div id="cate2">
										<div class="tt_circle" id="ttc2" style="visibility: hidden;"></div>
										액티비티
									</div>
							</a></li>
							<li class="cate_tt_sh1"><a>
									<div id="cate2w"></div>
							</a></li>
							<li class="cate_tt_sh" id="title3"><a
								href="/semi/selectList.ca?caType=ca3">
									<div id="cate3">
										<div class="tt_circle" id="ttc3" style="visibility: hidden;"></div>
										쿠킹
									</div>
							</a></li>
							<li class="cate_tt_sh1"><a>
									<div id="cate3w"></div>
							</a></li>
							<li class="cate_tt_sh" id="title4"><a
								href="/semi/selectList.ca?caType=ca4">
									<div id="cate4">
										<div class="tt_circle" id="ttc4" style="visibility: hidden;"></div>
										예술
									</div>
							</a></li>
							<li class="cate_tt_sh1"><a>
									<div id="cate4w"></div>
							</a></li>
							<li class="cate_tt_sh" id="title5"><a
								href="/semi/selectList.ca?caType=ca5">
									<div id="cate5">
										<div class="tt_circle" id="ttc5" style="visibility: hidden;"></div>
										교육
									</div>
							</a></li>
							<li class="cate_tt_sh1"><a>
									<div id="cate5w"></div>
							</a></li>
						</ul>
						<li class="cate_tt_sh2"><a> </a></li>
						<!-- check박스 옵션 -->
						<div id="cate6check">
							필터 상세보기 <span id="c_tri">▽ </span>
						</div>
					</div>
				</div>
				<br>
				<form class="category_form">
					<div class="sub_ca"></div>
					<div class="location">
						<div id="loca">수업장소</div>
						<select id="selLoca">
							<option value="anywhere">서울</option>
							<option value="sNorth">강북</option>
							<option value="sEast">강동</option>
							<option value="sSouth">강남</option>
							<option value="sWest">강서</option>
						</select>
					</div>
					<div class="con_sort">
						<label for="">정렬 </label> <select name="" id="cl_sort_select"
							style="color: #818181;">
							<option value="">인기순</option>
							<option value="">별점순</option>
							<option value="">가격 높은순</option>
							<option value="">가격 낮은순</option>
						</select>
					</div>
					<div class="cate_btn">

						<!-- <div class="cate" id="caBtn1" onclick="shmenuView1(0)" style="background: rgba(0, 129, 250, 0.137);" >분류</div> -->
						<div class="cate" id="caBtn2" onclick="shmenuView1(1)"
							style="background: rgba(0, 129, 250, 0.137);">언제</div>
						<div class="cate" id="caBtn3" onclick="shmenuView1(2)">수업방식</div>
						<div class="cate" id="caBtn4" onclick="shmenuView1(3)">금액</div>

						<div class="cate_sub">
							<!-- 카테고리 세부분류 -->
							<!-- <div class="catesub_list cates" id="sub0" style="display:none">
                                    <div class="main_sub_caca">
                                        <div class="act_group_sh" style="display: none;">
                                            <li><a>스포츠</a></li>
                                            <li><a>아웃도어</a></li>
                                        </div>
                                        <div class="cook_group_sh" style="display: none;">
                                            <li><a>쿠킹</a></li>
                                            <li><a>베이킹</a></li>
                                        </div>
                                        <div class="art_group_sh" style="display: none;">
                                            <li><a>미술</a></li>
                                            <li><a>음악</a></li>
                                            <li><a>사진</a></li>
                                            <li><a>공예</a></li>
                                        </div>
                                        <div class="std_group_sh">
                                            <li><a>어학</a></li>
                                            <li><a>IT</a></li>
                                            <li><a>실무</a></li>
                                        </div>
                                    </div>
                                </div> -->
							<div class="catesub_list cates" id="sub1">
								<div class="main_sub_caca">
									<li><a>월</a></li>
									<li><a>화</a></li>
									<li><a>수</a></li>
									<li><a>목</a></li>
									<li><a>금</a></li>
									<li><a>토</a></li>
									<li><a>일</a></li>
								</div>
							</div>
							<div class="catesub_list cates" id="sub2" style="display: none">
								<div class="main_sub_caca">
									<li><a>1 : 1</a></li>
									<li><a>그룹</a></li>
								</div>
							</div>
							<div class="catesub_list cates" id="sub3" style="display: none">
								<div class="cate_price">
									<div class="slide">
										<p>
											<label for="amount">가격 : </label> <input type="text"
												id="amount" readonly
												style="border: 0; color: #0981F1; font-size: 18px; font-weight: bold;">
											<br> <br>
										</p>

										<div id="slider-range"></div>
									</div>
								</div>

							</div>
						</div>
					</div>

				</form>
			</div>
			<!-- sort select -->
			<div class="CCCC">
				<div class="con-wrap">

					<div class="container_a">
						<!-- 컨텐츠 안에 들어가는 a태그 -->
						<% for(int i=0; i<caList.size(); i++){ %>
						<a href="/semi/selectOne.ci?cno=<%=caList.get(i).getClassNo()%>"
							class="content_a" id="con_<%=i %>" href="#">
							<div class="con_a_abs">
								<div class="content_a_back" id="bg_<%=i %>"
									style=" background-image: url('<%= caList.get(i).getClassImg() %>')"></div>
							</div>
							<div class="cont_a_profile">
								<div class="cont_a_p_title">
									<%= caList.get(i).getClassName() %>
								</div>
								<div class="c_etc">
									<div class="cont_a_p_loca">
										<span><%= caList.get(i).getClassLocation() %></span>
									</div>
									<div class="cont_a_p_star">
										<span id="c_star">★</span><span><%= caList.get(i).getAverageReview()%></span>
									</div>
								</div>
								<div class="cont_a_p_price">
									<span id="c_price"></span>
									<%= caList.get(i).getClassPrice() %>원
								</div>
							</div>
						</a>
						<script>
                        $(function(){
                            $('#con_<%=i %>').on({
                                'mouseenter':function(){
                                    $(bg_<%=i %>).css({'transform':'scale(1.1)','transition':'1s'});
                                },'mouseleave' : function(){
                                    $(bg_<%=i %>).css({'transform':'scale(1.0)','transition':'1s'});
                                }
                            });
                            });
                        </script>
						<%} %>
					</div>
					<br>
				</div>

			</div>
			<div class="moreBtnSh" id="mbtn_sh">
				<%=listCount %>개의 신나는 액티비티 전체보기
			</div>
			<br>
			<!--페이징 처리  -->
			<div class="pagelink_csh" id="pglk_sh">

				<div class="page_sh">
					<button
						onclick="location.href='<%= request.getContextPath() %>/selectList.ca?caType=ca0?currentPage=1'"><<</button>
					<%  if(currentPage <= 1){  %>
					<button disabled><</button>
					<%  }else{ %>
					<button
						onclick="location.href='<%= request.getContextPath() %>/selectList.ca?caType=ca0?currentPage=<%=currentPage - 1 %>'"><</button>
					<%  } %>

					<% for(int p = startPage; p <= endPage; p++){
									if(p == currentPage){	
							%>
					<button disabled><%= p %></button>
					<%      }else{ %>
					<button
						onclick="location.href='<%= request.getContextPath() %>/selectList.ca?caType=ca0?currentPage=<%= p %>'"><%= p %></button>
					<%      } %>
					<% } %>

					<%  if(currentPage >= maxPage){  %>
					<button disabled>></button>
					<%  }else{ %>
					<button
						onclick="location.href='<%= request.getContextPath() %>/selectList.ca?caType=ca0?currentPage=<%=currentPage + 1 %>'">></button>
					<%  } %>
					<button
						onclick="location.href='<%= request.getContextPath() %>/selectList.ca?caType=ca0?currentPage=<%= maxPage %>'">>></button>
				</div>

			</div>
		</div>
		<%@ include file="./common/footer.jsp"%>
	</div>

</body>
</html>