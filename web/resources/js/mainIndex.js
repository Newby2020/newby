
function searchBar() {
    document.getElementById('main_search').style.border = "2px solid rgb(9, 129, 241)";	    		 
	 
    $("#searchArea").blur(function() {
        document.getElementById('main_search').style.border = "2px solid lightgray";
    }).focus(function() {
        document.getElementById('main_search').style.border = "2px solid rgb(9, 129, 241)";
    });
}