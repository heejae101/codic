<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<p>글수정</p>
			<form method="POST" action="../BoardUpdateFormAction">
						<div>
				<input id="email" name="email" type="text"  placeholder="이메일을 입력해 주세요" autofocus>			
			</div>
				<div>
				<input id="title" name="title" type="text"  placeholder="제목을 입력해 주세요" autofocus>
			</div>
			<div>
				<input id="text" name="text" type="text"  placeholder="내용을 입력해 주세요" autofocus>			
			</div>
						<input type="submit" value="수정" id="updatde-bnt" onclick="checkValue(form)">
		</form>
			<script src="../resources/script/boardUpdate.js"></script>
</body>
</html>