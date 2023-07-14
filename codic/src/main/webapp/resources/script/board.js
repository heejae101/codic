function getComments() {
	const boardId = $('#boardId').val(); // 게시글 ID
	const sessionWriter = $('#writer').val();
	$.ajax({
		url: `/BoardListRequest`,
		method: 'GET',
		data: {
			board_id: boardId
		},
		success: function(data) {
			// success
			$('#board-list-area').empty(); // 기존에 출력된 댓글 제거
			data.result.forEach(comment => {
				const board_id = comment.board_id;
                const board_title = comment.board_title;
                const board_view_count = comment.board_view_count;
				const modified_timestamp = comment.modified_timestamp;
				const user_nickname = comment.user_nickname;
				const html = `
                <ul id="board-sub-ul">
					<li >${board_id}</li>
					<li><a href="/BoardContentView?board_id=${board_id}">${board_title}</a></li>
					<li>${user_nickname}</li>
					<li>${modified_timestamp}</li>
					<li>${board_view_count}</li>
				</ul>
                `;
				$('#board-list-area').append(html); // 댓글 생성
			});
		},
		error: function(data) {
			// error
			console.log('get comments error');
		}
	});
}


getComments();