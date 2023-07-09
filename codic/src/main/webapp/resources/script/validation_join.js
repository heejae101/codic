

function checkValue(htmlForm){
	const email=htmlForm.user_email.value;
	const password=htmlForm.user_password.value;
	const nickname=htmlForm.user_nickname.value;
    const name=htmlForm.user_name.value;
    const phone=htmlForm.user_phone_num.value;
   
	
	console.log(email);
	console.log(password);
	
	let check=true;
	
	if(email===""){
		$('#error-email').show();
		$('#user_email').parent().css('border-color', 'red');
		console.log(email);
		check=false;
		console.log(email);
		
	}else if(password===""){
		$('#error-password').show();
		check=false;
		
	}else if(nickname===""){
		check=false;
	}else if(name===""){
		check=false;
	}else if(phone.length !== 13 || phone.match(/\d{3}-\d{4}-\d{4}/) === null){
		console.log(phone);
		alert("전화번호가 올바르지 않아요");
		document.getElementById('user_phone_num').focus();//포커스 이동시켜서 다시 입력하라고
		check=false;
	}
	
	
	if(check===true){
		htmlForm.submit();
	}else{
	 alert("다시 입력해주세요.");	
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





	







