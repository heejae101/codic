$('#user_email').on('change', e => {
	if($('#user_email').val() !== "") {
		$('#error-email').hide();
		$('#user_email').parent().css('border-color', 'lightgrey');
		$('#user_email').parent().css('border-top', 'none');
	}
});


$('#user_password').on('change', e => {
	if($('#user_password').val() !== "") {
		$('#error-password').hide();
		$('#user_password').parent().css('border-color', 'lightgrey');
		$('#user_paswword').parent().css('border-top', 'none');
	}
});

/* 비밀번호 부분 */
let pwdChk = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[$@$!%*#?&])/; /* 영문 + 숫자 + 특수문자 */
let pwd_space = /[ ]/; /* 공백 */


     $(function(){
        $('#user_password').keyup(function(){ /* keyup: 사용자가 키보드를 누르고 떼는 순간 이벤트 발생 */
            $('#chkNotice1').html(''); /* .html() -> 선택한 요소 안의 내용을 호출하거나 바꾸어준다. */
             $('#chkNotice2').html('');
       /* 비밀번호 길이 검사 */
      /* 비밀번호의 길이가 4글자 미만이거나, 10글자 초과일 때 */
     /* 숫자와 특수문자 포함 */ 
     if($('#user_password').val().length < 4 || $('#user_password').val().length > 10||!pwdChk.test($('#user_password').val())){ 
		 $('#chkNotice1').html('비밀번호는 영문, 숫자와 특수문자 조합 4-10자 이내로 입력해주세요.<br>').css('color', 'red'); 
       
            
    }
    if(pwd_space.test($('#user_password').val())){
        $('#chkNotice1').html('비밀번호는 공백을 포함할 수 없습니다.<br>').css('color', 'red'); 
          
    }
      
        });
        
        /* 비밀번호, 비밀번호 확인 일치 검사 */
$('#user_password_c').keyup(function(){
    if($('#user_password').val() !== $('#user_paswword_c').val()){
        /* 비밀번호와 비밀번호 확인란의 값이 일치하지 않을 때 */
        $('#chkNotice2').html('비밀번호가 일치하지 않습니다.<br><br>').css('color', 'red'); /* 비밀번호 양식 오류일시 color: red */
         check=false;
    }else if($('#user_password').val() === $('#user_paswword_c').val()){
    /* 모든 조건에 충족하고, 비밀번호와 비밀번호 확인란의 값이 일치할 때 */
        $('#chkNotice2').html('비밀번호가 일치합니다. 사용 가능합니다.<br>').css('color', 'navy'); /* 일치시 color: darkblue */
       console.log('#user_password');
        }
     });
});




function checkValue(htmlForm){
	const email=htmlForm.user_email.value;
	const password=htmlForm.user_password.value;
	const password_c=htmlForm.user_password_c.value;
	const nickname=htmlForm.user_nickname.value;
    const name=htmlForm.user_name.value;
    const phone=htmlForm.user_phone_num.value;
   
	
	console.log(email);
	console.log(password);
	
	
	let pwdChk = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[$@$!%*#?&])/; /* 영문 + 숫자 + 특수문자 */
	let pwd_space = /[ ]/; /* 공백 */
	let check=true;
	

	if(email===""){
		$('#error-email').show();
		$('#user_email').parent().css('border-color', 'red');
		check=false;
		
	}else if(password===""){
		$('#error-password').show();
		check=false;
	}else if(password.length< 4 || password.length > 10 || !pwdChk.test(password)||pwd_space.test(password)){ 
		 check=false;
		 alert("비밀번호를 다시 입력해주세요.");
		
	}else if(password!==password_c){
		check=false;
		alert("비밀번호가 일치하지 않아요");
		
	}else if(nickname===""){
		check=false;
	}else if(name===""){
		check=false;
	}else if(phone.length !== 13 || phone.match(/\d{3}-\d{4}-\d{4}/) === null){
		alert("전화번호가 올바르지 않아요");
		document.getElementById('user_phone_num').focus();//포커스 이동시켜서 다시 입력하라고
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





	







