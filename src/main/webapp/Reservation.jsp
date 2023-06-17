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

/* 캘린더 스타일 */
.ui-datepicker {
	font-family: Arial, sans-serif;
	font-size: 14px;
	width: 200px;
	padding: 10px;
	background: linear-gradient(to bottom, #e2e2e2, #ffffff);
	border-radius: 10px;
}

.ui-datepicker-header {
	background-color: #333;
	color: #fff;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.ui-datepicker-title {
	font-weight: bold;
	font-size: 16px;
}

.ui-datepicker-prev, .ui-datepicker-next {
	cursor: pointer;
	background-color: #666;
	color: #fff;
	padding: 2px 5px;
	border-radius: 5px;
}

.ui-datepicker-prev:hover, .ui-datepicker-next:hover {
	background-color: #888;
}

.ui-datepicker-calendar {
	background-color: #fff;
}

.ui-datepicker-calendar td {
	padding: 3px;
}

.ui-datepicker-calendar .ui-state-default {
	cursor: pointer;
}

.ui-datepicker-calendar .ui-state-default:hover {
	background-color: #f5f5f5;
}
</style>
</head>
<body>
	<h1>오른쪽 메뉴 설정</h1>
	<!-- 네비게이션 바 -->
	<ul>
		<li><img src="C:/Users/COMPUTER/Desktop"><a href="Main.jsp">로고</a></li>
		<li><a href="MovieSelect.jsp">영화조회</a></li>
		<li><a href="Review.jsp">평점</a></li>
		<li><a href="movieControl?action=listMoviesReservation">영화예매</a></li>
	</ul>

	<!-- 영화 선택 -->
	<h3>영화 선택</h3>
	<ul id="movieList">
		<c:forEach var="m" items="${moviesReservation}">
			<li
				class="list-group-item list-group-item-action d-flex justify-content-betwwen align-items-center">
				<a class="movie-link" data-title="${m.movietitle}"
				data-genre="${m.genre}" data-age="${m.age}">영화제목:
					${m.movietitle} 영화장르: ${m.genre} 제한연령: ${m.age}이상</a>
			</li>
		</c:forEach>
	</ul>
	<p id="selectedMovie"></p>
	<script>
		// 영화 목록을 동적으로 생성하여 HTML에 추가
		var movieListElement = document.getElementById("movieList");
		var movieLinks = document.querySelectorAll(".movie-link"); // 모든 영화 링크 선택

		// 각 링크에 대해 클릭 이벤트 리스너 추가
		movieLinks.forEach(function(link) {
			link.addEventListener("click", function(event) {
				var selectedMovieElement = document
						.getElementById("selectedMovie");
				var title = event.target.dataset.title;
				var genre = event.target.dataset.genre;
				var age = event.target.dataset.age;
				selectedMovieElement.textContent = "영화제목: " + title + " 영화장르: "
						+ genre + " 제한연령: " + age + "이상";
			});
		});
	</script>
	<!-- 영화 날짜 선택 -->
	<h3>영화 날짜 선택</h3>
	<input type="text" id="datepicker" readonly>

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
	<!-- 영화 시간 선택 -->
	<h3>영화 시간 선택</h3>
	<li style="list-style-type: none;"><input type="text" id="myInput"
		placeholder="시간 입력"></li>
	<li style="list-style-type: none;"><a href="#" id="myLink">영화예매</a>
	</li>
	<script>
		// <a> 요소를 클릭했을 때 실행되는 함수를 정의합니다.
		document.getElementById("myLink").onclick = function() {
			// 텍스트 입력란에서 입력된 값을 가져옵니다.
			var myInput = document.getElementById("myInput");
			var inputValue = myInput.value;

			// 선택된 날짜를 가져옵니다.
			var selectedDate = $("#datepicker").datepicker("getDate");
			var formattedDate = $.datepicker.formatDate("yy-mm-dd",
					selectedDate);

			// 선택한 영화 정보를 가져옵니다.
			var selectedMovie = document.getElementById("selectedMovie").textContent;

			// 한국어 알림 창으로 값을 띄웁니다.
			alert("선택된 영화: " + selectedMovie + "\n선택된 시간은 " + inputValue
					+ "입니다.\n선택된 날짜는 " + formattedDate + "입니다.");
		};

		$(document).ready(function() {
			$("#datepicker").datepicker({
				dateFormat : "yy-mm-dd", // 선택된 날짜 형식
				minDate : 0, // 오늘 이전 날짜는 선택 불가능
				maxDate : "+1M", // 1달 이내의 날짜만 선택 가능
			});
		});
	</script>
</body>
</html>
