function checkValue(htmlForm){
	const password=htmlForm.user_password.value;
    const newPassword=htmlForm.new_password.value;
     const nickname=htmlForm.user_nickname.value;
	
	
	let check=true;
	
	if(password===""){
		check=false;
		
	}else if(newPassword===""){
		$('#error-password').show();
		check=false;
		
	}else if(nickname===""){
		check=false;
	}
	
	
	if(check===true){
		htmlForm.submit();
	}

	}