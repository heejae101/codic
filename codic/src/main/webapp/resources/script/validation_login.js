$('#user_email').on('change',e=>{
	const email=$('#user_email').val();
	if(email!==""){
		$('#error-id').hide();
	}
	
	
});

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




