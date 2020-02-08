<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>curriculum</title>
<script src="//cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>

</head>
<body>
	<textarea name="editor1" id="editor1" style="config.height = 1000;" class="tt121" cols="30" rows="6"></textarea>
	<script>
		CKEDITOR.replace("editor1",
				{
				     height: 150
				});
	</script>
</body>
</html>