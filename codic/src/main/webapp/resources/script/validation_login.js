$('#user_email').on('change',e=>{
	const email=$('#user_email').val();
	if(email!==""){
		$('#error-id').hide();
	}
	
});

$('#user_password').on('change', e => {
	const password = $('#user_password').val();
	
	if(password !== "") {
		$('#error-password').hide();
	}
});

function checkValue(htmlForm){
	const email=htmlForm.user_email.value;
	const password=htmlForm.user_password.value;
	
	let check=true;
	
	console.log(email);
	console.log(password);
	
	
	if(email===""){
		$('#error-id').show();
		$('#user_email').focus();
		check=false;
		
	}else if(password===""){
		$('#error-password').show();
		$('#user_password').focus();//포커스 이동시켜서 다시 입력하라고
		check=false;
		
	}
	
	if(check === true){
		htmlForm.submit();
		window.history.back();
	}
	
}




