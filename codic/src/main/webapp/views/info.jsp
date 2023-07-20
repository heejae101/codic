<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="../resources/style/reset.css">
<link rel="stylesheet" href="../resources/style/info.css">
 
</head>
<body>
<jsp:include page="/header"></jsp:include>
 <div class="container">
                <div class="card">
                <div class="img-box"></div>
                    <img class="card-img-top" src="/" 
                        style="width:100%">
                    <span class="card-body">
                        <h4 class="card-title">채희재</h4>
                        <p class="card-text"><a href="#" class="git-ad">깃주소</a></p>
            
                    </span>
                </div>
                <br>
                <div class="card">
                    <div class="img-box">
                    <img class="card-img-top" src="../resources/img/joobal.jpg"
                        style="width:50%">
                     </div>
                    <span class="card-body">
                        <h4 class="card-title">김주연</h4>
                        <p class="card-text"><a href="#" class="git-ad">깃주소</a></p>
                    </span>
                </div>
                <br>
                <div class="card">
                    <img class="card-img-top" src="/"
                        style="width:100%">
                    <span class="card-body">
                        <h4 class="card-title">유현호</h4>
                        <p class="card-text"><a href="#" class="git-ad">깃주소</a></p>
                    </span>
                </div>
            </div>
        <jsp:include page="/footer"></jsp:include>

</body>
</html>