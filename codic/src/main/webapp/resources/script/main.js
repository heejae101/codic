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



