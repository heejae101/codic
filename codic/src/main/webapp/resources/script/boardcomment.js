// 댓글 목록 요청 및 출력 함수
function getComments() {
	const urlParams = new URLSearchParams(window.location.search);
	const boardId = urlParams.get('board_id');
	const sessionWriter = $('#writer').val();
	$.ajax({
		url: `/BoardCommentFormAction`,
		method: 'GET',
		data: {
			board_id: boardId
		},
		success: function(data) {
			// success
			$('#comment').empty(); // 기존에 출력된 댓글 제거
			data.responseData.forEach(comment => {
				const commentId = comment.comment_id;
				const modified_timestamp = comment.modified_timestamp;
				const writer = comment.user_nickname;
				const contents = comment.board_answer;
				const html = `
                    <div class="comment">
                        <input type="hidden" id="commentId" value="${commentId}"/>
                        <span id="writer">${writer}</span>
                        <span id="commentText">${contents}</span>
                        <span id="date">${modified_timestamp}</span>
                        <c:if test=${writer === sessionWriter}>
                        	<button onclick="deleteComment(this)">삭제</button>
                        	<button onclick="updateComment(this)">수정</button>
                        </c:if>
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
	const urlParams = new URLSearchParams(window.location.search);
	const boardId = urlParams.get('board_id');
	const nickname = $('#writer').val(); // 작성자
	const contents = $('#contents').val(); // 내용
	if (nickname !== null) {
		$.ajax({
			url: `/BoardCommentFormAction`,
			method: 'POST',
			data: {
				board_id: boardId,
				nickname: nickname,
				contents: contents
			},
			success: function(data) {
				if(data.result === "CREATE_SUCCESS"){
					$('#contents').val(''); // 내용 입력란 초기화
					getComments(); // 댓글 목록 요청 및 출력
				}else if(data.result === "CREATE_ERROR"){
					alert("먼저 로그인 해주세요!");
				}
			},
			error: function(data) {
				alert("먼저 로그인 해주세요!")
				console.log('create comment error');
			}
		});
	} else {
		alert("댓글을 작성하시려면 로그인 해주세요!");
		 window.location.href = "login";
	}
}

function deleteComment(btnElement) {
	const urlParams = new URLSearchParams(window.location.search);
	const boardId = urlParams.get('board_id');
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
			if(data.result === true){		
				$(btnElement).parent().remove(); // 댓글 삭제
				getComments(); // 댓글 목록 요청 및 출력
			}else{
				alert("예기치 못한 에러가 발생하였습니다.")
			}
		},
		error: function(data) {
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

function deleteBoard() {
    const urlParams = new URLSearchParams(window.location.search);
	const boardId = urlParams.get('board_id');
    if (window.confirm("삭제하시겠습니까?")) {
        $.ajax({
            url: "/DeleteBoard",
            method: "GET",
            data: {
                board_id: boardId
            },
            success : function(data) {
                if(data.result === true){
                    window.history.back(); 
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

function updateBoard(button){
	const urlParams = new URLSearchParams(window.location.search);
	const boardId = urlParams.get('board_id');
	
    $.ajax({
        url: "/UpdateBoard",
        method: "GET",
        data: {
            board_id: boardId
        },
        success : function(data) {
            if(data.result === true){
                alert(" 완료됐습니다.");
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

// 댓글 목록 요청 및 출력 함수 호출
getComments();

// 댓글 작성 버튼 클릭 이벤트
$(document).on('click', '#commentBtn', function() {
	const user_nickname = $('#writer').val();
	console.log(user_nickname);
	if(user_nickname !== "guest"){
		createComment(); // 댓글 작성 함수 호출
	}else{
		alert("로그인 후 가능합니다");
	}
});
