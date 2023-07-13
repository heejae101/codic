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
		alert('이메일 형식이 옳지 않아요');
		check = false;

	}
	if (password === "") {
		$('#error-password').show();
		check = false;

	}
	if (password.length < 4 || password.length > 10 || !pwdChk.test(password) || pwd_space.test(password)) {
		alert("비밀번호를 다시 입력해주세요.");
		check = false;
	}

	if (password !== password_ch) {
		alert("비밀번호가 일치하지 않아요");
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
		alert("약관 동의를 체크하세요.");
		check = false;
	}

	if (check) {
		if (isIdChecked) {
			if (isNicknameChecked) {
				htmlForm.submit();
			} else {
				alert("닉네임 중복 확인을 해주세요.");
			}
		} else {
			alert("이메일 중복 확인을 해주세요.");
		}

	}

}


/*닉네임 중복검사*/
function duplCheck() {
	if(pwd_space.test($('#user_nickname').val())||$('#user_nickname').val()==""){
		alert("닉네임을 입력해주세요.");
		
	}else{
	var user_nickname = $('#user_nickname').val();
	$.ajax({
		type: 'POST',
		url: 'NickNameDupl',
		data: { user_nickname: user_nickname },
		success: function(responseData) {
			alert('data:' + $.trim(responseData));
			if ($.trim(responseData) == 'YES') {
				isNicknameChecked = true;
				$('#chkMsg').html('사용 가능한 닉네임입니다.').css('color', 'navy');
			} else {
				$('#chkMsg').html('사용할 수 없는 닉네임입니다.').css('color', 'red');
			}

		}

	});
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
			data: { user_email: user_email },
			success: function(responseData) {
				alert('data:' + $.trim(responseData));
				if ($.trim(responseData) == 'YES') {
					isIdChecked = true;
					$('#chkMsgEmail').html('사용 가능한 이메일입니다.').css('color', 'navy');
				} else {
					$('#chkMsgEmail').html('사용할 수 없는 이메일입니다.').css('color', 'red');
				}

			}

		});
	}
}

