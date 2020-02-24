var dropdown = document.getElementsByClassName("dropdown-btnqo");
var i;

for (i = 0; i < dropdown.length; i++) {
    dropdown[i].addEventListener("click", function() {
    this.classList.toggle("activeCl");
    var dropdownContent = this.nextElementSibling;
    if (dropdownContent.style.display === "block") {
    dropdownContent.style.display = "none";
    } else {
    dropdownContent.style.display = "block";
    }
    });
}

function pwdScreen(){
var dp1 = document.getElementById('pwdbtn1cke');
var dp2 = document.getElementById('pwdbtn2cke');
dp1.style.display = "none";
dp2.style.display = "block";
}

// 닉네임 수정
$('#nickBtn').click(function(){
	var exNick= $('#exNick');
	var nick = $('#nick');
	
	if(confirm("닉네임을 수정하시겠습니까?")){
		if(nick.val()!=""){
			if(exNick.val()!=nick.val()){
				var result = 0;
				$.ajax({
					url : "/semi/checkNick.do",
					type : "get",
					data:{
						nick : $('#nick').val(),
					}, success(data){
						result = data;
						if(result==1){
							alert("중복되는 닉네임입니다. 다시 입력해주세요.");
							nick.select();
						} else {
							$.ajax({
								url :"/semi/modiNick.do",
								type:"get",
								data:{
									nick : $('#nick').val(),
									mno : $('#mno').val()
								},
								success: function(data){
									nick.val(data);
									alert("닉네임 수정이 완료되었습니다.");
								}, error:function(){
									alert("전송 실패!");
								}
							});
							
						}
					}, error(){
						alert("중복검사 전송 실패 !")
					}
				});
			} else {
				alert("기존 닉네임과 동일하여 수정할 수 없습니다.");
				nick.select();
			}
		} else {
			alert("닉네임을 입력해주세요.");
			nick.focus();
		}
	}
	
});

// 비밀번호 수정
$('#pwdBtn').click(function(){
	var exPwd1 = $('#exPwd1');
	var exPwd2 = $('#exPwd2');
	var Pwd1 = $('#newPwd1');
	var Pwd2 = $('#newPwd2');
	var regular = /^.*(?=.{6,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
	
	function chk(re, ele){
        if(re.test(ele.val())){ 
        	return true;
        } else {
        	return false;
        }
    }
	
	//비밀번호 영어,숫자 포함 6~20자
		if(exPwd2.val()!=""){
			if(Pwd1.val()!=""){
				if(Pwd2.val()!=""){
					if(exPwd1.val() == exPwd2.val()){
						if(Pwd1.val() == Pwd2.val()){
							if(chk(regular,Pwd1)){
								$.ajax({
									url:"/semi/modiPwd.do",
									type:"get",
									data:{
										pwd : Pwd1.val(),
										mno : $('#mno').val()
									}, success(data){
										alert("비밀번호 수정이 완료되었습니다.");
										location.href="/semi/profile.do";
									}, error(){
										alert("비밀번호 수정 전송 실패!");
									}
								});
							} else {
								alert("비밀번호는 영문,숫자 포함 6~20자리로 입력해주세요.");
							}
						} else {			
							alert("새로운 비밀번호와 비밀번호 확인이 불일치합니다. 다시 입력해주세요.");
							Pwd1.select();
						}
					} else {
						alert("기존의 비밀번호가 틀립니다. 다시 입력해주세요.");
						exPwd2.select();
					}

				} else {
					alert("비밀번호 확인을 입력하지 않으셨습니다. 입력해주세요.");
					Pwd2.focus();
				}
			}else{
				alert("새로운 비밀번호를 입력하지 않으셨습니다. 입력해주세요.");
				Pwd1.focus();
			}
		} else {
			alert("기존의 비밀번호가 입력되지 않으셨습니다. 입력해주세요.");
			exPwd2.focus();
		}
});






// 폰번호 수정
$('#telBtn').click(function(){
	var tel1= $('#tel1').val();
	var tel2= $('#tel2').val();
	var tel3= $('#tel3').val();
	var tel = tel1+tel2+tel3;
	var exTel1=$('#exTel1').val();
	var exTel2=$('#exTel2').val();
	var exTel3=$('#exTel3').val();
	var exTel= exTel1+exTel2+exTel3;
	if(confirm("휴대폰 번호를 수정하시겠습니까?")){
		if(tel != ""){
			if(tel!=exTel){
				if(tel1.length>2){
					if(tel2.length>3){
						if(tel3.length>3){
							$.ajax({
								url :"/semi/modiPhone.do",
								type:"get",
								data:{
									tel : tel,
									mno : $('#mno').val()
								},
								success: function(data){
									alert("휴대폰 번호 수정이 완료되었습니다.");
								}, error:function(){
									alert("전송 실패!");
								}
							});
						} else {
							alert("세번째 자리수는 네자리수여야 합니다. 다시 입력해주세요.");
							$('#tel3').select();
						}
					} else {
						alert("두번째 자리수는 네자리수여야 합니다. 다시 입력해주세요.");
						$('#tel2').select();
					}
				} else {
					alert("첫번째 자리수는 세자리수여야 합니다. 다시 입력해주세요.");
					$('#tel1').select();
				}
				
			} else {
				alert("기존 휴대폰 번호와 동일하여 수정할 수 없습니다.");
				$('#tel1').select();
			}
			
		} else {
			alert("휴대폰 번호 입력해주세요.");
			$('#tel1').focus();
		}
	}
	
});

