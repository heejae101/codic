function checkValue(htmlForm) {
	const board_title = htmlForm.title.value;
	const board_text = htmlForm.contents.value;

	let check = true;

	if (board_title==="") {
		alert("제목을 입력하세요");
		check = false;
	}
	
	if (board_text==="") {
		alert("내용을 입력하세요");
		check = false;
	}
	
	if(check===true){
		htmlForm.submit();
	}
}