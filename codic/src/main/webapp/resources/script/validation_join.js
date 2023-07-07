/* 회원가입 문자열 체크 */

/*이메일 인증*/
function emailAuthentication(){
	if(!emailValCheck()){
		return false;
	}
	
	/*이메일 값이 있다면 이메일 정보를 get방식으로 전송*/
	                   /*서블렛 태그*/
	var url="confirmEmail.JoinFormAction?email= " + document.signupForm.email.value;
	var condition="toolbar=no, location=no, menubar=no,scrollbars=no,resizable=no,width=200, heigth=200"
	open(url, "confirm",condition)
	
	
}
const form=doucument.signUpForm;

function emailValcheck(){
	var emailPattern= /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
    var email=form.email.value;
    if(!chek(emailPattern,email,"유효하지 않은 이메일 주소입니다.")){
		return false;
	}
	return true;
     
}

function check(pattern,taget,message){
 if(pattern.test(taget)){
	 return true;
 }
 alert(message);
 taget.focus();
 return false;
 
}

/* 비밀번호 부분 */

    let pwdChk = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[$@$!%*#?&])/; /* 영문 + 숫자 + 특수문자 */
    let pwd_space = /[ ]/; /* 공백 */

    $(function(){
        $('#user_password').keyup(function(){ /* keyup: 사용자가 키보드를 누르고 떼는 순간 이벤트 발생 */
            $('#chkNotice').html(''); /* .html() -> 선택한 요소 안의 내용을 호출하거나 바꾸어준다. */
        });
        
        /* 비밀번호, 비밀번호 확인 일치 검사 */
$('#user_password_c').keyup(function(){
    if($('#user_password').val() != $('#user_paswword_c').val()){
        /* 비밀번호와 비밀번호 확인란의 값이 일치하지 않을 때 */
        $('#chkNotice').html('비밀번호가 일치하지 않습니다.<br><br>').css('color', 'red'); /* 비밀번호 양식 오류일시 color: red */
        /* 비밀번호 길이 검사 */
            /* 비밀번호의 길이가 4글자 미만이거나, 10글자 초과일 때 */
    }else if($('#user_password').val().length < 4 || $('#user_password').val().length > 10){ 
        $('#chkNotice').html('비밀번호의 길이는 4-10글자 사이여야 합니다.<br>').css('color', 'red');
        /* 숫자와 특수문자 포함 */
    }else if(!pwdChk.test($('#user_password').val())){
        $('#chkNotice').html('비밀번호는 영문, 숫자와 특수문자를 모두 포함해야 합니다.<br>').css('color', 'red');                    
    }else if(pwd_space.test($('#user_password').val())){
        $('#chkNotice').html('비밀번호는 공백을 포함할 수 없습니다.<br>').css('color', 'red');         
    }else{/* 모든 조건에 충족하고, 비밀번호와 비밀번호 확인란의 값이 일치할 때 */
        $('#chkNotice').html('비밀번호가 일치합니다. 사용 가능합니다.<br>').css('color', 'navy'); /* 일치시 color: darkblue */
        }
     });
});

function checkValue(htmlForm){
	const email=htmlForm.user_email.value;
	const password=htmlForm.user_password.value;
    const name=htmlForm.user_name.value;
    const phone=htmlForm.user_phone_num.value;
    const nickname=htmlForm.user_nickname.value;
	
	console.log(email);
	console.log(password);
	
	let check=true;
	
	if(email===""){
		$('#error-email').show();
		$('#id').parent().css('border-color', 'red');
		check=false;
		
	}else if(password===""){
		$('#error-password').show();
		check=false;
		
	}else if(name===""){
		check=false;
	}else if(phone===""){
		check=false;
	}else if(nickname===""){
		check=false;
	}
	
	
	if(check===true){
		htmlForm.submit();
	}

	}
	

function chk(){
 var req = document.form.req.checked;
 var num = 0;
 if(req == true){
  num = 1;
 }
 if(num==1){
  document.form.submit();
 }else{
  alert("개인정보 약관에 동의하셔야 합니다.");
 }
}





	







