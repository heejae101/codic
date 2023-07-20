<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
	<!-- 스타일 연결 -->
<link rel="stylesheet" href="../resources/style/reset.css">
<link rel="stylesheet" href="../resources/style/upload.css">
	
<title>수정페이지</title>

</head>
<body>

<div class="container">
<h2 class="title">사진을 선택해주세요</h2>
<div class="choose-box">
   <form action="/UploadProfile" method="post" enctype="multipart/form-data">
      <div class="form-group">
         <img id = "img__wrap"  src="${sessionScope.new_profile}" width="350px" height="300px" />
      </div>
      <div class= "form-group">
      <label for="file"><div class="btn-upload">사진 선택</div></label>
         <input class="profile-file" type="file" name="new_profile" id="img__preview" />
      </div>
      
        <input type="hidden" name="id" value="${sessionScope.email}" />
     
      <div class="form-group">
      	<button class="btn btn-primary w-100" id="btn-p">사진전송</button>
      </div>
   </form>
   </div>
</div>


<script src="../resources/script/profile.js"></script>


</body>
</html>