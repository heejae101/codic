$('#user_email').on('change', e => {
	if ($('#user_email').val() !== "") {
		$('#error-email').hide();
		$('#user_email').parent().css('border-color', 'lightgrey');
		$('#user_email').parent().css('border-top', 'none');
	}
});



var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;

$(function() {
	/*이메일 유효성*/
	$('#user_email').keyup(function() {
		$('#chkEmail').html('');
		if (!regExp.test($('#user_email').val())) {
			$('#chkEmail').html('올바른 이메일 형식이 아닙니다.<br>').css('color', 'red');
		}
	});

});


let isToKenChecked = false;
let isIdChecked = false;

function emailAuthentication() {
	var user_email = $('#user_email').val();
	$("#email_ch").prop('disabled', true);
	$.ajax({
		type: "POST",
		url: "/EmailVerification",
		data: { user_email: user_email },
		success: function(response) {
			if (response.result === "VERIFICATION_SENT") {
				$("#code").prop('disabled', false);
				$("#code_ch").prop('disabled', false);
				alert("인증번호를 확인을 해주세요.");
				console.log("이메일 확인 코드가 발송되었습니다.");
				console.log("확인 코드: " + response.verification_code);
				console.log("확인 코드 유효 시간: " + response.verification_duration + "분");
			} else {
				console.log("이메일 확인 코드 발송에 실패하였습니다.");
			}
		},
		error: function(xhr, status, error) {
			console.log(error);
		}
	});
}

/* 인증번호 확인*/
function authCodeCheck() {
	var email = $('#user_email').val();
	var inputCode = $('#code').val();
	$.ajax({
		type: "POST",
		url: "/CheckEmailAuthToken",
		data: {
			input_code: inputCode,
			email: email
		},
		success: function(response) {
			console.log(response);
			if (response.result === "VERIFICATION_SENT") {
				alert("인증되었습니다.");
				$("#code").prop('disabled', true);
				$("#code_ch").prop('disabled', true);
				isToKenChecked = true;
			}
			if (response.result === "The token code is invalid.") {
				alert("인증코드가 맞지않습니다.");
			}
			if (response.result === "The token code has expired.") {
				alert('다시 인증번호를 입력받아주세요');
			}
		},
		error: function(xhr, status, error) {
			console.log(error);
		}
	});
}

const button = document.querySelector('#find-btn');
button.addEventListener('click', () => {
	if (isToKenChecked) { // isToKenChecked 가 true 이면
		window.location.href = "newPassword"; // 이동할 페이지 url
	} else {
		alert('토큰 체크를 먼저 해주세요!') // 경고 메시지 출력
	}
});


function checkValue(htmlForm) {
	const email = htmlForm.user_email.value;

	let check = true;
	var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;



	if (email === "") {
		$('#error-email').show();
		$('#user_email').parent().css('border-color', 'red');
		check = false;

	}

	if (!regExp.test(email)) {
		check = false;

	}


	if (check && isToKenChecked) {
		htmlForm.submit();
	} else if (!isToKenChecked) {
		alert("이메일 인증을 해주세요.");
	}
}
