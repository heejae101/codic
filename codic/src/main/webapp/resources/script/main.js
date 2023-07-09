function checkValue(htmlForm){
	const text = htmlForm.text.value;
	
	let status = true; 
	
	if(text === ""){
		status = false;
	}
	
	if(status){
		htmlForm.submit();
	}
}

function dummy(){
	
}

var logInOut=function(){
	var btnLogout=document.getElementById('logount-btn');
	if(btnLogout !=null){
	btnLogout.onclick =function(){
	  location.href='../logOutAcion';
	}	
	
		
	}
	
	
	
	
}
