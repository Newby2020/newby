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

$('#table1 tr').click(function(){
    var tdArr = new Array();
    var tr = $(this);
    var td = tr.children();
    td.each(function(i){
    tdArr.push(td.eq(i).text());
    });
    window.open('AttendeeAttendanceManager.html','_blank','width=500, height=750, left=500, top=300, screenX=1000, screenY=500, scrollbar=no');
});