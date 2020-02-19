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
						alert(result);
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
//	alert(exTel);
//	alert(tel);
	if(confirm("휴대폰 번호를 수정하시겠습니까?")){
		if(tel != ""){
			if(tel!=exTel){
				$.ajax({
					url :"/semi/modiPhone.do",
					type:"get",
					data:{
						tel : tel,
						mno : $('#mno').val()
					},
					success: function(data){
						$('tel1').value(data.substr(1,3));
						$('tel2').value(data.substr(4,4));
						$('tel3').value(data.substr(8,4));
						alert("휴대폰 번호 수정이 완료되었습니다.");
					}, error:function(){
						alert("전송 실패!");
					}
				});
				
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

