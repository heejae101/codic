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

$(function() {
	var windowWidth = $(window).width();
	var slider = $('.slider5').bxSlider({
		slideWidth: 800,
		minSlides: 3,
		maxSlides: 3,
		moveSlides: 3,
		slideMargin: 20,
		speed: 2000,
		controls: false,
		touchEnabled: false
	});

	function updateSliderSettings() {
		var windowWidth = $(window).width();
		var slideWidth, minSlides, maxSlides, moveSlides, slideMargin, speed;

		if ((450 <= windowWidth && windowWidth <= 890)) {
			// 화면 너비가 890px 이하일 때
			slideWidth = 600;
			minSlides = 2;
			maxSlides = 2;
			moveSlides = 2;
			slideMargin = 20;
			speed = 2000;
		} else if (windowWidth < 450) {
			slideWidth = 600;
			minSlides = 1;
			maxSlides = 1;
			moveSlides = 1;
			slideMargin = 20;
			speed = 2000;
		} else {
			// 화면 너비가 890px보다 클 때
			slideWidth = 800;
			minSlides = 3;
			maxSlides = 3;
			moveSlides = 3;
			slideMargin = 20;
			speed = 2000;
		}

		slider.reloadSlider({
			slideWidth: slideWidth,
			minSlides: minSlides,
			maxSlides: maxSlides,
			moveSlides: moveSlides,
			slideMargin: slideMargin,
			speed: speed,
			controls: false,
			touchEnabled: false
		});
		
		updateSliderSettings();

        // 윈도우 리사이즈 이벤트 시 슬라이더 설정 업데이트
        $(window).resize(function () {
        updateSliderSettings();
        });

        $('.left_arrow_area').click(function () {
        slider.goToPrevSlide();
        });

        $('.right_arrow_area').click(function () {
        slider.goToNextSlide();
        });
	}
});