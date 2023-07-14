// 댓글 목록 요청 및 출력 함수
function getComments() {
	const boardId = $('#boardId').val(); // 게시글 ID
	$.ajax({
		url: `/BoardCommentFormAction`,
		method: 'GET',
		data: {
			board_id: boardId
		},
		success: function(data) {
			// success
			$('#comment').empty(); // 기존에 출력된 댓글 제거
			data.forEach(comment => {
				const commentId = comment.comment_id;
				const modified_timestamp = comment.modified_timestamp;
				const writer = comment.user_nickname;
				const contents = comment.board_answer;
				const html = `
                    <div class="comment-list">
				            <input type="hidden" id="commentId" value="${commentId}"/>
				            <div class="comment-name">
				                <span>${writer}</span>
				            </div>
				            <div class="comment-content">
				                <span>${contents}</span>
				            </div>
				            <div class="comment-date">
				                <span>${modified_timestamp}</span>
				            </div>
				            <button onclick="updateComment(this)">수정</button>
				            <button onclick="deleteComment(this)">삭제</button>
        			</div>
                    <div class="comment">
                        <input type="hidden" id="commentId" value="${commentId}"/>
                        <span>${writer}</span>
                        <span>${contents}</span>
                        <span>${modified_timestamp}</span>
                        <button onclick="updateComment(this)">수정</button>
                        <button onclick="deleteComment(this)">삭제</button>
                    </div>
                `;
				$('#comment').append(html); // 댓글 생성
			});
		},
		error: function(data) {
			// error
			console.log('get comments error');
		}
	});
}

// 댓글 작성 함수
function createComment() {
	const boardId = $('#boardId').val(); // 게시글 ID
	const nickname = $('#nickname').val(); // 작성자
	const email = $('#email').val(); // email
	const contents = $('#contents').val(); // 내용
	$.ajax({
		url: `/BoardCommentFormAction`,
		method: 'POST',
		data: {
			board_id: boardId,
			nickname: nickname,
			email: email,
			contents: contents
		},
		success: function(data) {
			$('#contents').val(''); // 내용 입력란 초기화
			getComments(); // 댓글 목록 요청 및 출력
		},
		error: function(data) {
			alert("로그인 부터 해주세요!")
			console.log('create comment error');
		}
	});
}

function deleteComment(btnElement) {
	const boardId = $('#boardId').val(); // 게시글 ID
	const commentElement = $(btnElement).closest('.comment');
	const commentId = commentElement.find('#commentId').val();

	if (!boardId) {
		console.log('board id is null');
		return;
	}
	if (!commentId) {
		console.log('comment id is null');
		return;
	}

	$.ajax({
		url: `/DeleteBoardComment`,
		method: 'POST',
		data: {
			board_id: boardId,
			comment_id: commentId
		},
		success: function(data) {
			$(btnElement).parent().remove(); // 댓글 삭제
			getComments(); // 댓글 목록 요청 및 출력
		},
		error: function(data) {
			// error
			console.log('create comment error');
		}
	});
}

function updateComment(btnElement) {
	const boardId = $('#boardId').val(); // 게시글 ID
	const commentElement = $(btnElement).closest('.comment');
	const commentId = commentElement.find('#commentId').val();

	$.ajax({
		url: `/UpdateBoardComment`,
		method: 'POST',
		data: {
			board_id: boardId,
			comment_id: commentId
		},
		success: function(data) {
			$('#contents').val(''); // 댓글 삭제
			getComments(); // 댓글 목록 요청 및 출력
		},
		error: function(data) {
			// error
			console.log('create comment error');
		}
	});
}

// 댓글 목록 요청 및 출력 함수 호출
getComments();

// 댓글 작성 버튼 클릭 이벤트
$(document).on('click', '#commentBtn', function() {
	createComment(); // 댓글 작성 함수 호출
});
