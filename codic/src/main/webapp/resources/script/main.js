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

