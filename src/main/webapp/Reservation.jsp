<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<!-- JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<title>5조</title>
<style>
ul {
	background-color: #FFDAB9;
	list-style-type: none;
	margin: 0;
	padding: 0;
	overflow: hidden;
}

li {
	float: left;
}

li a {
	display: block;
	background-color: #FFDAB9;
	color: #000000;
	padding: 8px;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
}

li a.current {
	background-color: #FF6347;
	color: white;
}

li a:hover:not(.current) {
	background-color: #CD853F;
	color: white;
}
</style>
</head>
<body>
	<h1>오른쪽 메뉴 설정</h1>
	<!-- 네비게이션 바 -->
	<ul>
		<li><img src="C:/Users/COMPUTER/Desktop">로고</li>
		<li><a href="MovieSelect.jsp">영화조회</a></li>
		<li><a href="Review.jsp">평점</a></li>
		<li><a href="Reservation.jsp">영화예매</a></li>
	</ul>

	<!-- 영화 선택 -->
	<h3>영화 선택</h3>
	<ul id="movieList"></ul>
	<p id="selectedMovie"></p>
	<script>
		// 영화 데이터
		var movies = [ {
			title : "영화 1",
			date : "2023-06-16"
		}, {
			title : "영화 2",
			date : "2023-06-17"
		}, {
			title : "영화 3",
			date : "2023-06-18"
		} ];

		// 영화 목록을 동적으로 생성하여 HTML에 추가
		var movieListElement = document.getElementById("movieList");
		for (var i = 0; i < movies.length; i++) {
			var movie = movies[i];
			var listItem = document.createElement("li");
			var link = document.createElement("a");
			link.href = "#";
			link.textContent = movie.title + " - " + movie.date;

			// 영화를 클릭했을 때 selectedMovie 요소에 선택한 영화 정보 설정
			link.addEventListener("click", function(event) {
				var selectedMovieElement = document
						.getElementById("selectedMovie");
				selectedMovieElement.textContent = event.target.textContent;
			});

			listItem.appendChild(link);
			movieListElement.appendChild(listItem);
		}
	</script>
	<!-- 영화 날짜 선택 -->
	<h3>영화 날짜 선택</h3>
	<input type="text" id="datepicker" readonly>
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- 영화 시간 선택 -->
	<h3>영화 시간 선택</h3>
	<li style="list-style-type: none;"><select id="myComboBox">
			<option value="value1">값 1</option>
			<option value="value2">값 2</option>
			<option value="value3">값 3</option>
	</select></li>
	<li style="list-style-type: none;"><a href="#" id="myLink">영화예매</a>
		<script>
			// <a> 요소를 클릭했을 때 실행되는 함수를 정의합니다.
			myLink.onclick = function() {
				// 콤보박스에서 선택된 값을 가져옵니다.
				var myComboBox = document.getElementById("myComboBox");
				var selectedValue = myComboBox.value;

				// 선택된 값에 따라 한국어로 나타내기 위한 객체를 정의합니다.
				var koreanValues = {
					value1 : "값 1",
					value2 : "값 2",
					value3 : "값 3"
				};

				// 한국어로 변환된 값을 가져옵니다.
				var koreanValue = koreanValues[selectedValue];

				// 선택된 날짜를 가져옵니다.
				var selectedDate = $("#datepicker").datepicker("getDate");
				var formattedDate = $.datepicker.formatDate("yy-mm-dd",
						selectedDate);

				// 선택한 영화 정보를 가져옵니다.
				var selectedMovie = document.getElementById("selectedMovie").textContent;

				// 한국어 알림 창으로 값을 띄웁니다.
				alert("선택된 영화: " + selectedMovie + "\n선택된 값은 " + koreanValue
						+ "입니다.\n선택된 날짜는 " + formattedDate + "입니다.");
			};

			$(document).ready(function() {
				$("#datepicker").datepicker({
					dateFormat : "yy-mm-dd", // 선택된 날짜 형식
					minDate : 0, // 오늘 이전 날짜는 선택 불가능
					maxDate : "+1M", // 1달 이내의 날짜만 선택 가능
				});
			});
		</script></li>
</body>
</html>
