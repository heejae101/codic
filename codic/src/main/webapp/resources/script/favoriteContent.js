
function addFavorite() {
	const urlParams = new URLSearchParams(window.location.search);
	const contentId = urlParams.get('contentId');
	$.ajax({
		method: 'GET',
		url: 'UserAddFavorite',
		data: { content_id : contentId },
		success: function(responseData) {
			if (responseData.msg === "즐겨찾기 추가 완료") {
				alert(responseData.msg);
			}else if(responseData.msg === "로그인 부터 해주세요"){
				alert(responseData.msg);
				location.href = "login";
			}else{
				alert("즐겨찾기 에러 발생");
			}
		}
	});
}
