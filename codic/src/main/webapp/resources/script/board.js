function boardList() {
	var url = '/BoardListRequest';
	var call = new Request();
	call.open('GET', url, true);

	call.onload = function() {
		// 서버에서 반환한 데이터 가져오기
		var response = call.responseText;

		// 가져온 데이터를 화면에 출력
		var output = document.getElementById('listOutput');
		output.innerHTML = response;
	};
	call.send();
}

window.onload = function() {
	boardList();
};
	
/*   $(function() {
       

       $.ajax({
           url : "/BoardRequest",
           type : "GET",
           data : {
               board_No : num
           },
           success : function(data) {
               console.log(data);
               // 태그를 만들어서 해당 위치에 삽입
               $("body").html(data);
           },
           error : function() {
               console.log("Error occurred");
           }
       })


  });*/ 
   