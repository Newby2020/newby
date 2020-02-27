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

$(".reviewBtn").click(function(){
	var cno = $(this).closest("tr").find('.cno').val();
	var psno = $(this).closest("tr").find('.psno').val();
	var cname = $(this).closest("tr").find('.cname').val();
	var psdate = $(this).closest("tr").find('.psDate').val();
	var cstart = $(this).closest("tr").find('.cStart').val();
	var cend = $(this).closest("tr").find('.cEnd').val();
	
	var popupX = (document.body.offsetWidth / 2) - (200 / 2);
  	var popupY= (document.body.offsetHeight / 2) - (300 / 2);
  	if(confirm("클래스 '"+cname+"("+psdate+"/"+cstart+"~"+cend +")'의 후기를 작성하시겠습니까?")){
  		window.open("/semi/views/mypage_WritingReview2.jsp?cno="+cno+"&psno="+psno, "후기 작성", "status=no, width=470,  height=360, left="+ popupX + ", top="+ popupY);  		
  	}
});
