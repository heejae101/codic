function checkValue(htmlForm){
	const text = htmlForm.text.value;
	
	let status = false; 
	
	if (event.keyCode === 13){
		status = true;
	}
	
	if(text === ""){
		status = false;
	}
	
	if(status){
		htmlForm.submit();
	}
}

function dummy(){
	
}