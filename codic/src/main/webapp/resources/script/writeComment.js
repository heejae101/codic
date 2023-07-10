function checkValue(htmlForm){
	const comment_id = htmlForm.cNum.value;
	const board_title = htmlForm.bNum.value;
	const board_text = htmlForm.uId.value;
	const board_view_count = htmlForm.text.value;

	console.log(comment_id);
	console.log(board_title);
	console.log(board_text);
	console.log(board_view_count);

	let check = true;

	if (board_title === "") {
		alert("제목을 입력하세요");
		check = false;

	}

	if (board_text === ""){
		alert("내용을 입력하세요");
		check = false;

	}

	if (check === true) {
		htmlForm.submit();
	}
}
