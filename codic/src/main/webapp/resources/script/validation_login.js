$('#user_email').on('change', e => {
	const email = $('#user_email').val();
	if (email !== "") {
		$('#error-id').hide();
	}

});

$('#user_password').on('change', e => {
	const password = $('#user_password').val();

	if (password !== "") {
		$('#error-password').hide();
	}
});



//아이디 비밀번호 일치 체크
var msg = '${msg}';
if (msg === '아이디와 비밀번호 일치하지 않습니다.') {
	alert("아이디와 비밀번호 일치하지 않습니다.");
}



function checkValue(htmlForm) {
	const email = htmlForm.user_email.value;
	const password = htmlForm.user_password.value;

	let check = true;

	console.log(email);
	console.log(password);

	if (email === "") {
		$('#error-id').show();
		$('#user_email').focus();
		check = false;

	} else if (password === "") {
		$('#error-password').show();
		$('#user_password').focus();//포커스 이동시켜서 다시 입력하라고
		check = false;

	}


	if (check === true) {
		$.ajax({
			method: "POST",
			url: "Login",
			data: { user_email: email, user_password: password },
			success: function(responseData) {
				if (responseData !== "") {
					alert('아이디와 비밀번호가 일치 하지않습니다.');
				} else {
					location.href = "main";
				}
			}
		});
	}

}


document.addEventListener('keypress', e => {
	const email = document.getElementById('user_email').value.trim();
	const password = document.getElementById('user_password').value.trim();

	if (email !== '' && password !== '' && e.key === 'Enter') {
		document.getElementById('login').submit();
	}

});




