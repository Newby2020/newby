<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>introductionClass</title>
<script src="//cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>
</head>
<body>
	<textarea name="editor2" id="editor2" class="tt121" cols="30" rows="6" required></textarea>
	<script>
	CKEDITOR.replace("editor2",
			{
			     height: 300
			});
	</script>
</body>
</html>