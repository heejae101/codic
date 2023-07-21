<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="shortcut icon" href="/resources/img/fav/favicon.png">
<meta property="og:title" content="CODIC">
<meta property="og:description" content="알아두면 쓸데있고 신기한 코딩사전">
<meta property="og:image" content="http://codicblog.site/">
<script
   src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<!-- 카카오 -->
<script type="text/javascript"
   src="https://developers.kakao.com/sdk/js/kakao.min.js" charset="utf-8"></script>
<!-- 스타일 연결 -->
<link rel="stylesheet" href="../resources/style/login.css">

<title>로그인</title>
</head>
<body>
   <div id="root">
      <jsp:include page="/header"></jsp:include>
      <section id="login-section">
         <div class="login">
            <h2 class="login_text">로그인</h2>
            <p class="join">
               회원이 되고 싶으세요? <a class="join-btn" href="/join">회원가입</a>
            </p>
            <form id="login">
               <div class="login_1">
                  <div class="login_box">
                     <input type="email" class="square" id="user_email"
                        name="user_email" placeholder="your@email.com" autofocus>
                     <input type="password" class="square" id="user_password"
                        name="user_password" placeholder="비밀번호">
                     <ul>
                        <li class="error" id="error-id">유효한 이메일을 입력해주세요.</li>
                        <li class="error" id="error-password">비밀번호는 필수 정보입니다.
                        <li>
                     </ul>
                  </div>
                  <input type="button" id="sub-btn" value="로그인"
                     onclick="checkValue(form)">
            </form>


            <div class="find">
               <p class="find-btn">
                  <a href="/find" class="f-text">비밀번호 찾기 ></a>
               </p>
            </div>
         </div>


         <!-- 간편 로그인 -->
         <div class="login_2">
            <div class="kakao">
               <a href="/KakaoAuthRequestAction"><img class="kakao"
                  src="../resources/img/kakao.png"></a>
            </div>
         </div>
      </section>
      <jsp:include page="/footer"></jsp:include>
   </div>
   <script src="../resources/script/validation_login.js"></script>
</body>
</html>