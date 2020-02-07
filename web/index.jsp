<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>새로운 취미를 찾아서 NEWBY</title>
 	
 	
 	<link rel="stylesheet" href="/semi/resources/css/main-category.css">
 	<link rel="stylesheet" href="/semi/resources/css/main-panel.css">	
 	<link rel="stylesheet" href="/semi/resources/css/footer.css">
 	
 

</head>
<body>
	<div id="Allpanel" align="center">
			<%@ include file="views/common/header.jsp" %>
		<div id="newby-body-panel">
		   
              <div id="chr-category">
                <div class="chr-category">
                    <img src="/semi/resources/images/act-category.png" id="chr-category-img" width="100%" height="230px">
                </div>
                
                <div class="chr-category">
                   <img src="/semi/resources/images/quiet.png" id="chr-category-img" width="100%" height="230px">
                </div>
              </div>

              <br><br><br>
              <hr>
              <br><br><br>

              <div class="main-category-sum">
                <div class="main-category" id="cate-activity">
                <img class="card-img-top" src="/semi/resources/images/activities.png" onclick="activityImg();"><br>
             	      액티비티
                </div>
                <div class="main-category" id="cate-art">          
                <img class="card-img-top" src="/semi/resources/images/art2.png" onclick="artImg();"><br>
                	    예술
                </div>
                <div class="main-category" id="cate-cooking">
                <img class="card-img-top" src="/semi/resources/images/cook2.png" onclick="cookingImg();"><br>  
                	    쿠킹
                </div>
                <div class="main-category" id="cate-it">
                <img class="card-img-top" src="/semi/resources/images/it2.png" onclick="eduImg();"><br>
                   	 교육
                </div>
            </div>

        </div>
        
        <%@ include file = "views/common/footer.jsp" %>
     </div> 
</body>
</html>