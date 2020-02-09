<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>introductionClass</title>
<script src="/semi/resources/js/ckeditor/ckeditor.js"></script>
<script src="/semi/resources/js/ckeditor/adapters/jquery.js"></script>
</head>
<body>
	<textarea name="editor2" id="editor2" class="tt121" cols="30" rows="6"></textarea>
	<script>
	CKEDITOR.replace("editor2",
			{
			     height: 300
			});
	</script>
</body>
</html>