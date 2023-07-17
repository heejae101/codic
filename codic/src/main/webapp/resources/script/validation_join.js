$('#user_email').on('change', e => {
	if ($('#user_email').val() !== "") {
		$('#error-email').hide();
		$('#user_email').parent().css('border-color', 'lightgrey');
		$('#user_email').parent().css('border-top', 'none');
	}
});


$('#user_password').on('change', e => {
	if ($('#user_password').val() !== "") {
		$('#error-password').hide();
		$('#user_password').parent().css('border-color', 'lightgrey');
		$('#user_paswword').parent().css('border-top', 'none');
	}
});


$('#user_name').on('change', e => {
	if ($('#user_name').val() !== "") {
		$('#error-name').hide();
		$('#user_name').parent().css('border-color', 'lightgrey');
		$('#user_name').parent().css('border-top', 'none');
	}
});

$('#user_nickname').on('change', e => {
	if ($('#user_nickanme').val() !== "") {
		$('#error-nickname').hide();
		$('#user_nickname').parent().css('border-color', 'lightgrey');
		$('#user_nickname').parent().css('border-top', 'none');
	}
});


var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
let pwdChk = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[$@$!%*#?&])/; /* 영문 + 숫자 + 특수문자 */
let pwd_space = /[ ]/; /* 공백 */
let isIdChecked = false;
let isNicknameChecked = false;
let isToKenChecked = false;

$(function() {
	/*이메일 유효성*/
	$('#user_email').keyup(function() {
		$('#chkEmail').html('');
		if (!regExp.test($('#user_email').val())) {
			$('#chkEmail').html('올바른 이메일 형식이 아닙니다.<br>').css('color', 'red');
		}
	});

	/* 비밀번호 유효성 검사 */
	$('#user_password').keyup(function() { /* keyup: 사용자가 키보드를 누르고 떼는 순간 이벤트 발생 */
		$('#chkNotice1').html(''); /* .html() -> 선택한 요소 안의 내용을 호출하거나 바꾸어준다. */
		$('#chkNotice2').html('');

		/* 비밀번호 길이 검사 */
		/* 비밀번호의 길이가 4글자 미만이거나, 10글자 초과일 때 */
		/* 숫자와 특수문자 포함 */
		if ($('#user_password').val().length < 4 || $('#user_password').val().length > 10 || !pwdChk.test($('#user_password').val())) {
			$('#chkNotice1').html('비밀번호는 영문, 숫자와 특수문자 조합 4-10자 이내로 입력해주세요.<br>').css('color', 'red');

		}
		if (pwd_space.test($('#user_password').val())) {
			$('#chkNotice1').html('비밀번호는 공백을 포함할 수 없습니다.<br>').css('color', 'red');

		}

	});

	/* 비밀번호, 비밀번호 확인 일치 검사 */
	$('#user_password_ch').keyup(function() {
		if ($('#user_password').val() !== $('#user_password_ch').val()) {
			/* 비밀번호와 비밀번호 확인란의 값이 일치하지 않을 때 */
			$('#chkNotice2').html('비밀번호가 일치하지 않습니다.<br><br>').css('color', 'red'); /* 비밀번호 양식 오류일시 color: red */

		} else if ($('#user_password').val() === $('#user_password_ch').val()) {
			/* 모든 조건에 충족하고, 비밀번호와 비밀번호 확인란의 값이 일치할 때 */
			$('#chkNotice2').html('비밀번호가 일치합니다. 사용 가능합니다.<br>').css('color', 'navy'); /* 일치시 color: darkblue */
			console.log('#user_password');
		}
		
		if (pwd_space.test($('#user_password_ch').val())) {
			$('#chkNotice2').html('비밀번호는 공백을 포함할 수 없습니다.<br>').css('color', 'red');

		}
	});
});

/*전체 동의 선택/해제*/
const agreeChkAll =
	document.querySelector('input[name=agree_all]');
agreeChkAll.addEventListener('change', (e) => {
	let agreeChk =
		document.querySelectorAll('input[name=user_check]');
	for (let i = 0; i < agreeChk.length; i++) {
		agreeChk[i].checked = e.target.checked;
	}
});



function checkValue(htmlForm) {
	const email = htmlForm.user_email.value;
	const password = htmlForm.user_password.value;
	const password_ch = htmlForm.user_password_ch.value;
	const nickname = htmlForm.user_nickname.value;
	const name = htmlForm.user_name.value;

	let check = true;
	var regExp = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/;
	let pwdChk = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[$@$!%*#?&])/; /* 영문 + 숫자 + 특수문자 */
	let pwd_space = /[ ]/; /* 공백 */



	if (email === "") {
		$('#error-email').show();
		$('#user_email').parent().css('border-color', 'red');
		check = false;

	}

	if (!regExp.test(email)) {
		check = false;

	}
	if (password === "") {
		$('#error-password').show();
		check = false;

	}
	if (password.length < 4 || password.length > 10 || !pwdChk.test(password) || pwd_space.test(password)) {
		check = false;
	}

	if (password !== password_ch) {
		check = false;

	}

	if (name === "") {
		$('#error-name').show();
		check = false;

	}

	if (nickname === "") {
		$('#error-nickname').show();
		check = false;
	}


	if (!$('#user_check1').prop('checked') || !$('#user_check2').prop('checked')) { //체크박스 미체크시
		alert("약관 동의를 체크해주세요.");
		check = false;
	}

	if (check && isIdChecked && isNicknameChecked && isToKenChecked) {
		htmlForm.submit();
	} else if (!isIdChecked) {
		alert("이메일 중복 확인을 해주세요.");
	} else if (!isToKenChecked) {
		alert("이메일 인증을 해주세요.");
	} else if (!isNicknameChecked) {
		alert("닉네임 중복 확인을 해주세요.");
	}
}


/*닉네임 중복검사*/
function duplCheck() {
	if (pwd_space.test($('#user_nickname').val()) || $('#user_nickname').val() == "") {
		alert("닉네임을 입력해주세요.");

	} else {
		var user_nickname = $('#user_nickname').val();
		$.ajax({
			type: 'POST',
			url: 'NickNameDupl',
			data: { user_nickname: user_nickname },
			success: function(responseData) {
				if ($.trim(responseData) == 'YES') {
					isNicknameChecked = true;
					$('#chkMsg').html('사용 가능한 닉네임입니다.').css('color', 'navy');
				} else {
					$('#chkMsg').html('이미 사용중인 닉네임입니다.').css('color', 'red');
				}

			}

		});
	}
}

/* 이메일 인증번호 전송 */
function emailAuthentication() {
	if (isIdChecked) {
		var user_email = $('#user_email').val();
		$("#email_ch").prop('disabled', true);
		$.ajax({
			type: "POST",
			url: "/EmailVerification",
			data: { user_email: user_email },
			success: function(response) {
				if (response.result === "VERIFICATION_SENT") {
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
	} else {
		alert("이메일 중복 확인을 해주세요.");
	}
}

/* 인증번호 확인*/
function authCodeCheck() {
	if (isIdChecked) {
		var inputCode = $('#code').val();
		$.ajax({
			type: "POST",
			url: "/CheckEmailAuthToken",
			data: { input_code: inputCode },
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
	} else {
		$("#code").prop('disabled', true);
		$("#code_ch").prop('disabled', true);
		alert("이메일 중복 확인을 해주세요.");
	}
}

/*이메일 중복검사*/
function chkEmail() {
	if (!regExp.test($('#user_email').val())) {
		alert("이메일 형식을 확인해주세요.");
	} else {

		var user_email = $('#user_email').val();
		$.ajax({
			type: 'POST',
			url: 'EmailDupl',
			data: {user_email: user_email },
			success: function(responseData) {
				if ($.trim(responseData) == 'YES') {
					isIdChecked = true;
					$('#chkMsgEmail').html('사용 가능한 이메일입니다.').css('color', 'navy');
				} else {
					$('#chkMsgEmail').html('이미 사용중인 이메일입니다.').css('color', 'red');
				}

			}

		});
	}
}


