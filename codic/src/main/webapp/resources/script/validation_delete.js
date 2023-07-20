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


	if (email === "") {
		check = false;

	} else if (password === "") {
		$('#error-password').show();
		$('#user_password').focus();//포커스 이동시켜서 다시 입력하라고
		check = false;

	}

	if (check === true) {
		$.ajax({
			method: "POST",
			url: "Leave",
			data: { user_email: email, user_password: password },
			success: function(responseData) {
				
				console.log(responseData);
				
				if (responseData.result === true) {
					location.href = "main";
				} else {
					alert("비밀번호가 올바르지 않습니다.");
				}
			}
		});
	}

}

