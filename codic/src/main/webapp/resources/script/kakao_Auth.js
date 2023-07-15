Kakao.init('75cb29ae3c4a6a484712d46c8824ecf2'); //발급받은 키 중 javascript키를 사용해준다.
console.log(Kakao.isInitialized()); // sdk초기화여부판단
//카카오로그인
function kakaoLogin() {
	Kakao.Auth.login({
		success: function(response) {
			Kakao.API.request({
				url: '/v2/user/me',
				success: function(response) {
					console.log(response)
				},
				fail: function(error) {
					console.log(error)
				},
			})
		},
		fail: function(error) {
			console.log(error)
		},
	})
}

function kakaoDataRequest(data) {
	$.ajax({
		url: `/KakaoAuthRequestAction`,
		method: 'POST',
		data: {
			data:data
		},
		success: function(data) {
			if (data.result === "CREATE_SUCCESS") {
				$('#contents').val(''); // 내용 입력란 초기화
				getComments(); // 댓글 목록 요청 및 출력
			} else if (data.result === "CREATE_ERROR") {
				alert("먼저 로그인 해주세요!");
			}
		},
		error: function(data) {
			alert("먼저 로그인 해주세요!")
			console.log('create comment error');
		}
	});
}

//카카오로그아웃  
function kakaoLogout() {
	if (Kakao.Auth.getAccessToken()) {
		Kakao.API.request({
			url: '/v1/user/unlink',
			success: function(response) {
				console.log(response)
			},
			fail: function(error) {
				console.log(error)
			},
		})
		Kakao.Auth.setAccessToken(undefined)
	}
}

$(window).on('load', function() {
	$(document).on('keypress', e => {
		if (e.key === 'Enter') {
			search();
		}
	})
});
