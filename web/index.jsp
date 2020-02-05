<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>새로운 취미를 찾아서 NEWBY</title>
 	
 	
 	<link rel="stylesheet" href="/semi/resources/css/main-category.css">
 	<link rel="stylesheet" href="/semi/resources/css/main-panel.css">
 	
 	<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic+Coding|Noto+Sans+KR&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Nanum+Gothic|Jua|Noto+Sans+KR|Black+Han+Sans|Public+Sans&display=swap');" rel="stylesheet">

    <style>
        body{
            font-family: 'Noto Sans KR', sans-serif;
             }       
    </style>

</head>
<body>
		<div id="newby-body-panel">
		<%@ include file="/views/common/header.jsp" %>

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
                <img class="card-img-top" src="/semi/resources/images/art2.png" alt=""><br>
                	    예술
                </div>
                <div class="main-category" id="cate-cooking">
                <img class="card-img-top" src="/semi/resources/images/cook2.png" alt=""><br>  
                	    쿠킹
                </div>
                <div class="main-category" id="cate-it">
                <img class="card-img-top" src="/semi/resources/images/it2.png" alt=""><br>
                   	 IT
                </div>
            </div>

        </div>
</body>
</html>