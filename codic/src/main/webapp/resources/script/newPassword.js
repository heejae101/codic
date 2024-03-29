// todo 비밀번호 중복 체크랑 보내는거해야함
let pwdChk = /^(?=.*[a-zA-Z])(?=.*\d)(?=.*[$@$!%*#?&])/; /* 영문 + 숫자 + 특수문자 */
let pwd_space = /[ ]/; /* 공백 */


$('#new_password').on('change', e => {
	if ($('#new_password').val() !== "") {
		$('#error-password').hide();
		$('#new_password').parent().css('border-color', 'lightgrey');
		$('#new_paswword').parent().css('border-top', 'none');
	}
});

$(function() {
	/* 비밀번호 유효성 검사 */
	$('#new_password').keyup(function() { /* keyup: 사용자가 키보드를 누르고 떼는 순간 이벤트 발생 */
		$('#chkNotice1').html(''); /* .html() -> 선택한 요소 안의 내용을 호출하거나 바꾸어준다. */
		$('#chkNotice2').html('');

		/* 비밀번호 길이 검사 */
		/* 비밀번호의 길이가 4글자 미만이거나, 10글자 초과일 때 */
		/* 숫자와 특수문자 포함 */
		if ($('#new_password').val().length < 4 || $('#new_password').val().length > 10 || !pwdChk.test($('#new_password').val())) {
			$('#chkNotice1').html('비밀번호는 영문, 숫자와 특수문자 조합 4-10자 이내로 입력해주세요.<br>').css('color', 'red');

		}
		if (pwd_space.test($('#new_password').val())) {
			$('#chkNotice1').html('비밀번호는 공백을 포함할 수 없습니다.<br>').css('color', 'red');

		}

	});

	/* 비밀번호, 비밀번호 확인 일치 검사 */
	$('#user_password_ch').keyup(function() {
		if ($('#new_password').val() !== $('#user_password_ch').val()) {
			/* 비밀번호와 비밀번호 확인란의 값이 일치하지 않을 때 */
			$('#chkNotice2').html('비밀번호가 일치하지 않습니다.<br><br>').css('color', 'red'); /* 비밀번호 양식 오류일시 color: red */

		} else if ($('#new_password').val() === $('#user_password_ch').val()) {
			/* 모든 조건에 충족하고, 비밀번호와 비밀번호 확인란의 값이 일치할 때 */
			$('#chkNotice2').html('비밀번호가 일치합니다. 사용 가능합니다.<br>').css('color', 'navy'); /* 일치시 color: darkblue */

		}
	});
});

function checkValue(htmlForm) {
	const newPassword = htmlForm.new_password.value;
	const newPassword_ch = htmlForm.user_password_ch.value;
	let check = true;
	if (newPassword === "") {
		$('#error-password').show();
		check = false;

	} else if (newPassword.length < 4 || newPassword.length > 10 || !pwdChk.test(newPassword) || pwd_space.test(newPassword)) {
		check = false;

	} else if (newPassword_ch === "") {
		check = false;
		
	} else if (newPassword !== newPassword_ch) {
		check = false;
	}
		
	if (check === true) {
		htmlForm.submit();
	}
	
}

