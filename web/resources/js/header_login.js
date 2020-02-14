/* 로그인 스크립트 */
var Loginmodal = document.getElementById('LoginModal');

var login = document.getElementById("login");

var span = document.getElementsByClassName("loginClose")[0];                                          

    login.onclick = function() {
      LoginModal.style.display = "block";
    }

    span.onclick = function() {
      LoginModal.style.display = "none";
    }
    
/* 로그인 스크립트 종료 */

//로그인 버튼 클릭 시 제출
 function buttonLogin(){
     $('#mainLoginForm').submit();
 }


//로그아웃 버튼 클릭
function logout(){
    location.href='/semi/logout.me';
    alert('로그아웃되었습니다');
}

/* 회원가입 스크립트 */
  var joinModal = document.getElementById('joinModal');

  var signIn = document.getElementById("signIn");

  var joinSpan = document.getElementsByClassName("joinClose")[0];                                          

  signIn.onclick = function() {
      joinModal.style.display = "block";
  }

  joinSpan.onclick = function() {
      joinModal.style.display = "none";
  }
  
  
  
  function buttonJoin(){
      $('#joinForm').submit();
      
  }
/* 회원가입 스크립트 종료 */