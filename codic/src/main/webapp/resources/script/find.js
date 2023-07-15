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