<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>리뷰 작성</title>
    
    <style>
    *{
    margin: 0;
    padding: 0;
}
.rate {
    float: left;
    height: 46px;
    padding: 0 10px;
    margin-left: 40px;
}
.rate:not(:checked) > input {
    position:absolute;
    top:-9999px;
}
.rate:not(:checked) > label {
    float:right;
    width:1em;
    overflow:hidden;
    white-space:nowrap;
    cursor:pointer;
    font-size:30px;
    color:#ccc;
}
.rate:not(:checked) > label:before {
    content: '★ ';
}
.rate > input:checked ~ label {
    color: #ffc700;    
}
.rate:not(:checked) > label:hover,
.rate:not(:checked) > label:hover ~ label {
    color: #deb217;  
}
.rate > input:checked + label:hover,
.rate > input:checked + label:hover ~ label,
.rate > input:checked ~ label:hover,
.rate > input:checked ~ label:hover ~ label,
.rate > label:hover ~ input:checked ~ label {
    color: #c59b08;
}

.btn{
  background: rgb(9, 129, 241);
  color: white;
  border: none;
  height: 27px;
  width: 80px;
  border-radius: 5px;
  padding-bottom: 1.5px;
  padding-top: 1px;
}
</style>

</head>

<body>
    <form action="">
        <div style="margin: 30px; margin-left: auto; margin-right: auto; width: 250px;
                    height: 300px; text-align: center;">
    
            <h1 style=" margin-bottom: 8px;">후기 작성</h1>
                <div class="rate">
                    <input type="radio" id="star5" name="rate" value="5" />
                    <label for="star5" title="text">5 stars</label>
                    <input type="radio" id="star4" name="rate" value="4" />
                    <label for="star4" title="text">4 stars</label>
                    <input type="radio" id="star3" name="rate" value="3" />
                    <label for="star3" title="text">3 stars</label>
                    <input type="radio" id="star2" name="rate" value="2" />
                    <label for="star2" title="text">2 stars</label>
                    <input type="radio" id="star1" name="rate" value="1" />
                    <label for="star1" title="text">1 star</label>
                  </div>
                  <br><br><br>
            <textarea name="" id="" cols="30" rows="10"></textarea>
            <div style="margin-top: 3px;">
                <button class="btn">등록</button>
                &nbsp;&nbsp;
                <button class="btn">닫기</button>
            </div>
        </div>
    </form>
</body>
</html>