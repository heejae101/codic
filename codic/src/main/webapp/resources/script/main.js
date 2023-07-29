document.addEventListener("DOMContentLoaded", function() {
    const dynamicText = document.querySelector("h1 span");
    const words = ["Life.","인생이다.","Everything.","모든것이다.","like Art.","예술이다."];
  
    let wordIndex = 0;
    let charIndex = 0;
    let isDeleting = false;
  
    const typeEffect = () =>{
      const currentWord = words[wordIndex];
      const currentChar = currentWord.substring(0,charIndex);
      dynamicText.textContent = currentChar;
      dynamicText.classList.add("stop-blinking");
  
      if(!isDeleting && charIndex < currentWord.length){
        charIndex++;
        setTimeout(typeEffect, 200);
      } else if (isDeleting && charIndex > 0) {
        charIndex--;
        setTimeout(typeEffect, 100);
      }else{
        isDeleting = !isDeleting;
        dynamicText.classList.remove("stop-blinking");
        wordIndex = !isDeleting ? (wordIndex+1) % words.length : wordIndex;
        setTimeout(typeEffect,1200);
      }
    }
  
    typeEffect();
    getContent();
  });
  



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
							</div>
							<div id="content-views">
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