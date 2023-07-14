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
			$('#board-sub-ul').empty(); // 기존에 출력된 댓글 제거
			data.forEach(comment => {
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
				$('#board-list-sec').append(html); // 댓글 생성
                const html2 = `
                <button onclick="updateComment(this)">수정</button>
                <button onclick="deleteComment(this)">삭제</button>
                `;
                $('#btn').append(html2);
			});
		},
		error: function(data) {
			// error
			console.log('get comments error');
		}
	});
}


function deleteBoard(button) {
    var boardId = $(button).parent().siblings(":first").text();  // 게시물 번호 추출
    if (window.confirm("삭제하시겠습니까?")) {
        $.ajax({
            type: "GET",
            url: "/DeleteBoard",
            data: { board_Id: boardId },
            success : function(data) {
                if(data.result === true){
                    alert("삭제가 완료됐습니다.");
                    $(button).parent().parent().remove();
                    getComments()
                }else{
                    alert("삭제가 취소됐습니다.");
                }
            },
            error : function(error) {
                alert("서버와의 통신에 실패하였습니다.");
            }
        });
    }
}

getComments()