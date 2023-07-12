function checkValue(htmlForm) {
	const user_email = htmlForm.email.value;
	const board_title = htmlForm.title.value;
	const board_text = htmlForm.text.value;
	const board_view_count = htmlForm.view_count.value;

	console.log(user_email);
	console.log(board_title);
	console.log(board_text);
	console.log(board_view_count);

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