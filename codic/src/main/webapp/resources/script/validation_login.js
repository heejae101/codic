$('#user_email').on('change',e=>{
	const email=$('#user_email').val();
	if(email!==""){
		$('#error-id').hide();
	}
	
	
});

//카카오 로그인
    $(document).ready(function(){
        Kakao.init('script앱키 입력');
        Kakao.isInitialized();
    });

    function loginWithKakao() {
        Kakao.Auth.authorize({ 
        redirectUri: 'http://127.0.0.1:8080/api/social/login/kakao' 
        }); // 등록한 리다이렉트uri 입력
    }


function checkValue(htmlForm){
	const email=htmlForm.user_email.value;
	const password=htmlForm.user_password.value;
	
	console.log(email);
	console.log(password);
	let check=true;
	
	if(email===""){
		$('#error-id').show();
		check=false;
		
	}else if(password===""){
		$('#error-password').show();
		check=false;
		
	}
	if(check===true){
		htmlForm.submit();
		window.history.back();
	}
	
	
}




