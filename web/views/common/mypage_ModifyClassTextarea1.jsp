<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String curri = request.getParameter("curri");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>curriculum</title>
<script src="/semi/resources/js/ckeditor/ckeditor.js"></script>
<script src="/semi/resources/js/ckeditor/adapters/jquery.js"></script>
</head>
<body>
	<textarea name="editor1" id="editor1" style="config.height = 1000;" class="tt121" cols="30" rows="6" required><%=curri %></textarea>
	<script>
		CKEDITOR.replace("editor1",
				{
				     height: 150
				});
	</script>
</body>
</html>