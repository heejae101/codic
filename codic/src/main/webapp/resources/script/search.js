/**
 document.getElementById('searchForm').addEventListener("submit", e =>{
	e.preventDefault();
	
    const text = document.getElementById('text').value.trim();
    
    if(text !== '') {
		$.ajax({
			"method" : "GET",
			"url" : `http://localhost:8080/SelectContent?text=${text}`
		});

	}
});
 */
 
document.getElementById('searchForm').addEventListener("submit", e =>{
	e.preventDefault();
});
 
document.addEventListener('keypress', e => {
	const text = document.getElementById('text').value.trim();
	
	if(text !== '' && e.key === 'Enter') {
		document.getElementById('searchForm').submit();
	}
})