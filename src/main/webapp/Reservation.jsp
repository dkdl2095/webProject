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
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- Script -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<title>5조</title>
<style>
ul {
	background-color: #81D4FA;
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
	background-color: #81D4FA;
	color: #000000;
	padding: 8px;
	text-decoration: none;
	text-align: center;
	font-weight: bold;
}

li a.current {
	background-color: #81D4FA;
	color: white;
}

li a:hover:not(.current) {
	background-color: #81D4FA;
	color: white;
}

.img_wrap {
	position: relative;
	width: 300px;
	height: 347px;
	overflow: hidden;
}

.img_wrap img {
	margin-top: 4px;
	position: absolute;
	width: 100%;
	height: 100%;
	object-fit: cover;
	transform: scale(1.0);
	transition: transform 0.5s;
}

.img_wrap:hover img {
	transform: scale(1.1);
	z-index: 1;
}

body {
  background-color: #E1F5FE;
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
	background-color: #81D4FA;
	color: white;
	border-top-left-radius: 10px;
	border-top-right-radius: 10px;
}

.ui-datepicker-title {
	font-weight: bold;
	font-size: 16px;
}

.ui-datepicker-prev, .ui-datepicker-next {
	cursor: pointer;
	background-color: #81D4FA;
	color: white;
	padding: 2px 5px;
	border-radius: 5px;
}

.ui-datepicker-prev:hover, .ui-datepicker-next:hover {
	background-color: #81D4FA;
	color: white;
}

.ui-datepicker-calendar {
	background-color: #81D4FA;
	color: white;
}

.ui-datepicker-calendar td {
	padding: 3px;
}

.ui-datepicker-calendar .ui-state-default {
	cursor: pointer;
}

.ui-datepicker-calendar .ui-state-default:hover {
	background-color: #81D4FA;
	color: white;
}

.time-input {
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 16px;
}

.booking-button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #81D4FA;
	color: #000000;
	font-weight: bold;
	border: none;
	border-radius: 5px;
	text-decoration: none;
	cursor: pointer;
}
/* 16x16 표 스타일 */
.table-16x16 {
	display: grid;
	grid-template-columns: repeat(16, 20px); /* 열 간격 조정 */
	gap: 4px; /* 행 간격 조정 */
}

/* 셀 스타일 */
.table-16x16-cell {
	width: 20px;
	height: 20px;
	border: 1px solid black;
	border-radius: 4px; /* 둥글게 모서리만 가진 네모 설정 */
	cursor: pointer;
}

.seat-number {
	display: none;
}
</style>
</head>
<body>
	<!-- 네비게이션 바 -->
	<ul id="navigation">
		<li><a href="movieControl?action=listMoviesMain"><img
				src="./image/5wh.png" style="width: 25px; height: 25px;"></a></li>
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
					${m.movietitle} 영화장르: ${m.genre} 제한연령: ${m.age}세 이상</a>
			</li>
		</c:forEach>
	</ul>
	<div style="display: none">
		<p id="selectedMovie"></p>
	</div>
	<!-- 영화 날짜 선택 -->
	<h3>영화 날짜 선택</h3>
	<input type="text" id="datepicker" name="datepicker" readonly>
	<!-- 영화 시간 선택 -->
	<h3>영화 시간 선택</h3>
	<li style="list-style-type: none;"><input type="time" id="myInput"
		placeholder="시간 선택" class="time-input"></li>
	<br>
	<br>
	<!-- 좌석 선택 -->
	<h3>좌석 선택</h3>
	<div class="table-16x16">
		<c:forEach var="row" begin="1" end="10">
			<c:forEach var="column" begin="1" end="16">
				<c:choose>
					<c:when test="${column eq '1'}">
						<c:out value="${64 + row}"></c:out>
					</c:when>
					<c:otherwise>
						<div class="table-16x16-cell">
							<span class="seat-number">${(row - 1) * 16 + column}</span>
						</div>
					</c:otherwise>
				</c:choose>
			</c:forEach>
		</c:forEach>
	</div>
	<div id="selectedSeatsDiv" style="display: none"></div>
	<li style="list-style-type: none;"><a id="myLink"
		class="booking-button">영화예매</a></li>
	<li style="list-style-type: none;"><a
		href="movieControl?action=listReservation" id="del"
		class="booking-button">영화 예매취소 하러가기</a></li>
	<script>
		// 영화 목록을 동적으로 생성하여 HTML에 추가
		var movieListElement = document.getElementById("movieList");
		var movieLinks = document.querySelectorAll(".movie-link"); // 모든 영화 링크 선택

		// 좌석 선택을 저장할 변수
		var selectedSeats = [];

		// 좌석 셀 요소를 선택합니다.
		var seatCells = document.querySelectorAll('.table-16x16-cell');

		// 각 링크에 대해 클릭 이벤트 리스너 추가
		movieLinks.forEach(function(link) {
			link.addEventListener("click", function(event) {
				var selectedMovieElement = document
						.getElementById("selectedMovie");
				var title = event.target.dataset.title;
				var genre = event.target.dataset.genre;
				var age = event.target.dataset.age;
				selectedMovieElement.textContent = "영화제목: " + title + " 영화장르: "
						+ genre + " 제한연령: " + age + "세 이상";
			});
		});

		// <a> 요소를 클릭했을 때 실행되는 함수를 정의합니다.
		document.getElementById("myLink").onclick = function() {
			// 시간 입력란에서 입력된 값을 가져옵니다.
			var myInput = document.getElementById("myInput");
			var inputValue = myInput.value;

			// 선택된 날짜를 가져옵니다.
			var selectedDate = $("#datepicker").datepicker("getDate");
			var formattedDate = $.datepicker.formatDate("yy-mm-dd",
					selectedDate);

			// 선택한 영화 정보를 가져옵니다.
			var selectedMovie = document.getElementById("selectedMovie").textContent;

			// 선택된 좌석 정보를 가져옵니다.
			var selectedSeatsDiv = document.getElementById("selectedSeatsDiv").textContent;
			
			// 알림창으로 출력
			alert("선택된 영화: " + selectedMovie + "\n"
			+ "선택된 날짜는 " + formattedDate + "입니다." + "\n"
			+ "선택된 시간은 " + inputValue + "입니다." + "\n"
			+ "선택된 좌석: " + selectedSeatsDiv);

			var url = "movieControl?action=addReservation&movietitle="
					+ selectedMovie + "&rdate=" + formattedDate + "&time="
					+ inputValue + "&seat=" + selectedSeatsDiv;
			location.href = url;
		};
		// 각 셀에 클릭 이벤트 리스너를 추가합니다.
		seatCells.forEach(function(cell) {
			cell.addEventListener('click', function() {
				// 클릭된 셀에 대한 동작을 수행합니다.
				if (cell.style.backgroundColor === 'red') {
					// 이미 선택된 좌석일 경우, 선택을 해제합니다.
					cell.style.backgroundColor = '';
					var index = selectedSeats.indexOf(cell.textContent);
					if (index > -1) {
						selectedSeats.splice(index, 1);
					}
				} else {
					// 선택되지 않은 좌석일 경우, 선택합니다.
					cell.style.backgroundColor = 'red';
					selectedSeats.push(cell.textContent);
				}

				// 선택된 좌석 정보를 업데이트합니다.
				selectedSeatsDiv.textContent = selectedSeats.join(",");
				selectedSeatsDiv.textContent = selectedSeatsDiv.textContent
						.replace(/\s/g, '');
			});
		});

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
