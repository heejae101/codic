function checkValue(htmlForm, event) {
    const text = htmlForm.text.value.trim();
    let status = false;

    if (text && event.keyCode === 13) {
        status = true;
    }

    if (status) {
        htmlForm.submit();
    } else {
        alert("검색어를 입력하세요.");
    }
}