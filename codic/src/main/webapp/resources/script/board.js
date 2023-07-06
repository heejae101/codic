function search() {
	
		$.ajax({
			"url": `/board`,
			"method": "GET"
		}).done(function(response) {
			$('#contents-container').empty();

			const list = response;
			console.log('typeof list : ', typeof list);
			
			if(typeof list === 'string') {
				location.href = "login";
			} else {
				list.forEach(book => {
					// 썸네일
					const thumb = book.thumbnail;
					// 제목 
					const title = book.title;
					// 저자
					const author = book.author;
					// 출판사 
					const publisher = book.publisher;
					// 판매가 
					const price = book.price;
					// 상세페이지
					const url = book.url;
	
					if (thumb !== not_found && thumb !== "") {
						$('#contents-container').append(
							`<div class="book">
	                                <a href="${url}">
	                                    <img src="${thumb}">
	                                </a>
	                                <p class="book-title">${title}</p>
	                                <p><span class="book-author">${author}</span> | <span class="book-publisher">${publisher}</span></p>
	                                <p><span class="book-price">${price}</span>원</p>
	                            </div>`
						);
					}
				});
			}

		}).fail(function() {
			location.href = "login";
		});
}