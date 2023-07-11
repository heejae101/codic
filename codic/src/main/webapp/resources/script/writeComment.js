function checkValueComment(htmlForm){
	const board_id = htmlForm.bNum.value;
	const user_email = htmlForm.uId.value;
	const board_answer = htmlForm.ctext.value;

	console.log(board_id);
	console.log(user_email);
	console.log(board_answer);

	let check = true;

	if (user_email === "") {
		alert("아이디를 입력하세요");
		check = false;

	}

	if (board_answer === ""){
		alert("내용을 입력하세요");
		check = false;

	}

	if (check === true) {
		htmlForm.submit();
	}
}
