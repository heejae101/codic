<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div id="write-box">
		<form method="post" action="PostWrite">
			<div>
				<input id="title" name="title" type="text"  placeholder="제목을 입력해 주세요" autofocus>
			</div>
			<div>
				<input id="content" name="content" type="text"  placeholder="내용을 입력해 주세요" autofocus>			
			</div>
			<input type="submit" value="등록">
		</form>
	</div>
</body>
</html>