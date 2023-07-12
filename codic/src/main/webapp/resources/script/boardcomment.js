// 댓글 목록 요청 및 출력 함수
function getComments() {
    const boardId = $('#boardId').val(); // 게시글 ID
    $.ajax({
        url: `/BoardCommentFormAction`,
        method: 'GET',
        success: function (data) {
            // success
            $('#comment').empty(); // 기존에 출력된 댓글 제거
            data.forEach(comment => {
                const modified_timestamp = new Date(comment.modified_timestamp);
                const writer = comment.board_id;
                const contents = comment.board_answer;
                const html = `
                    <div class="comment">
                        <p>${writer}, ${modified_timestamp}, ${contents}</p>
                    </div>
                `;
                $('#comment').append(html); // 댓글 생성
            });
        },
        error: function (data) {
            // error
            console.log('get comments error');
        }
    });
}

// 댓글 작성 함수
function createComment() {
    const boardId = $('#boardId').val(); // 게시글 ID
    const writer = $('#writer').val(); // 작성자
    const contents = $('#contents').val(); // 내용
    $.ajax({
        url: `/BoardCommentFormAction`,
        method: 'POST',
        data: {
            writer: writer,
            contents: contents
        },
        success: function (data) {
            // success
            $('#writer').val(''); // 작성자 입력란 초기화
            $('#contents').val(''); // 내용 입력란 초기화
            getComments(); // 댓글 목록 요청 및 출력
        },
        error: function (data) {
            // error
            console.log('create comment error');
        }
    });
}

// 댓글 목록 요청 및 출력 함수 호출
getComments();

// 댓글 작성 버튼 클릭 이벤트
$(document).on('click', '#commentBtn', function () {
    createComment(); // 댓글 작성 함수 호출
});
