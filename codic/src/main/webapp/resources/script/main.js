function checkValue(htmlForm) {
	const text = document.getElementById('text').value.trim();

	let status = true;

	if (text === '') {
		status = false;
	}

	if (status) {
		htmlForm.submit();
	}
}

function getContent() {
	$.ajax({
		url: `/PopularContent`,
		method: 'GET',
		success: function(data) {
			// success
			$('#populer-detail-content').empty();
			data.result.forEach(content => {
				const commentId = content.content_id;
				const content_title = content.content_title;
				const views = content.content_views;
				const path = content.file_path;
				let html = `
					<a href="ContentViews?contentId=${commentId}">
                        <div id="img-area">
								<img src="${path}"/>
						</div>
                        <div id="text-area">
							<div id="content-title">
								<h3>${content_title}</h3>
								<div>
									<span>${content_title}</span>
								</div>
							</div>
							<div>
								<span>조회수 : ${views}</span>
							</div>
						</div>
                `;
				$('#populer-detail-content').append(html); // 댓글 생성
			});
		},
		error: function(data) {
			console.log('get comments error');
		}
	});
}

getContent()