function checkValue(htmlForm) {
	const user_email = htmlForm.id.value;
	const board_title = htmlForm.title.value;
	const board_text = htmlForm.text.value;

	console.log(user_email);
	console.log(board_title);
	console.log(board_text);

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
		alert("수정 완료");
		htmlForm.submit();
	}
}