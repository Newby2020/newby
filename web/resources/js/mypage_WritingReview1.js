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
//	alert("cno : "+cno);
//	alert("psno : "+psno);
	var popupX = (document.body.offsetWidth / 2) - (200 / 2);
  	var popupY= (document.body.offsetHeight / 2) - (300 / 2);

	window.open("/semi/views/mypage_WritingReview2.jsp?cno="+cno+"&psno="+psno, "후기 작성", "status=no, width=280,  height=360, left="+ popupX + ", top="+ popupY);
});
