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

function kakaoDataRequest() {
	$.ajax({
		url: `/KakaoAuthRequestAction`,
		method: 'GET',
		success: function(data) {
			console.log(data);
		},
		error: function(data) {
			console.log(data);
		}
	});
}