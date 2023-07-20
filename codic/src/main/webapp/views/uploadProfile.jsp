<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<title>수정페이지</title>

</head>
<body>

<div class="container">
<div class="d-flex justify-content-center">
   <form action="/UploadProfile" method="post" enctype="multipart/form-data">
      <div class="form-group">
         <img id = "img__wrap" src="${sessionScope.user.new_profile}" width="350px" height="300px" />
      </div>
      <div class= "form-group">
         <input type="file" name="new_profile" id="img__preview" />
      </div>
      
        <input type="hidden" name="id" value="${sessionScope.user.email}" />
     
      <div class="form-group">
      	<button class="btn btn-primary w-100">사진전송</button>
      </div>
   </form>
   </div>
</div>


<script src="../resources/script/mypage.js"></script>


</body>
</html>