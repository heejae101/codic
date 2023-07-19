// 댓글 목록 요청 및 출력 함수
let urlParams = ''
let boardId = ''

$(window).on('load', function() {
	urlParams = new URLSearchParams(window.location.search);
	boardId = urlParams.get('board_id');
	console.log('check')
})

function getComments() {
	urlParams = new URLSearchParams(window.location.search);
	boardId = urlParams.get('board_id');
	const sessionValue = document.getElementById("writer-comment").innerHTML;
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
				const current_timestamp = comment.current_timestamp;
				const writer = comment.user_nickname;
				const contents = comment.board_answer;
				let html = `
					<div class="comment-div" id='${commentId}' value='${commentId}'>
                        <span id="writer">${writer}</span>
                        <span id="commentText">${contents}</span>
                        <span id="date">${current_timestamp}</span>
                `;
                if(writer === sessionValue){
					html +=`
						<button id="bnt" onclick="deleteComment(this)">삭제</button>
						<button id="bnt" onclick="updateComment(this)">수정</button>
					</div>
                     `;
				}else{
					html +=`</div>`;
				}
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
	const nickname = document.getElementById("writer-comment").innerHTML;
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
				window.location.href = "login";
			}
		});
	} else {
		alert("댓글을 작성하시려면 로그인 해주세요!");
		window.location.href = "login";
	}
}

function deleteComment(btnElement) {
	const commentElement = btnElement.parentNode;
	const commentId = commentElement.id;

		console.log(commentId);
		
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
	const board_id = boardId;
	const commentElement = btnElement.parentNode;
	const commentId = commentElement.id;

	const commentText = $('#' + commentId).children('#commentText').text();
	$('#' + commentId).children('#commentText').hide();
	$('#' + commentId).children('#date').hide();
	$('#' + commentId).children('#bnt').hide();

	$(`#${commentId}`).append(
		`<textarea id='newComment' class='update-area'>${commentText}</textarea>
		<button class='apply-bnt' value="등록">등록</button>
		<button class='cancel-bnt' value="취소">취소</button>`
	);

	// 등록 버튼 클릭시
		$(`#${commentId}`).on('click', '.apply-bnt', function() {
			const newCommentText = $('#newComment').val();
			const cT = newCommentText;
			const data = {
				'board_id': board_id,
				'comment_id': commentId,
				'commentText': cT
			}
			console.log(cT);
			$.ajax({
				"url": `/UpdateBoardComment`,
				"method": 'POST',
				"data": JSON.stringify(data),
				"headers": {
				"Content-Type": "application/json"
				},
				success: function(data) {
					$('.update-area').remove();
					$('.apply-bnt').remove();
					$('.cancel-bnt').remove();
					getComments();

				},
				error: function(data) {
					// error
					console.log('update comment error');
				}
			});

		});
		// 취소 버튼 클릭시
		$('#' + commentId).on('click', '.cancel-bnt', function() {
			$('#' + commentId).children('#commentText').show();
			$('#' + commentId).children('#date').show();
			$('#' + commentId).children('#bnt').show();
			$('.update-area').remove();
			$('.apply-bnt').remove();
			$('.cancel-bnt').remove();
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
                    window.location.href = "boardList";
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
	const user_nickname = document.getElementById("writer-comment").innerHTML;
	console.log(user_nickname);
	if(user_nickname !== ''){
		createComment(); // 댓글 작성 함수 호출
	}else{
		alert("로그인 후 가능합니다");
	}
});

/*
document.addEventListener('keypress', e => {
	const nickname = document.getElementById("writer-comment").innerHTML;
	const contents = $('#contents').val();
	console.log(contents);
	if(nickname !== '' && contents !== '' && e.key === 'Enter') {
		createComment();
	}
})
*/

