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
				console.log(responseData);
				if (responseData.result ===true) {
					location.href = "main";
					
				} else {
					alert('아이디와 비밀번호가 일치하지 않습니다.');

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




