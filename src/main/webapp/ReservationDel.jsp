<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

#selecteReservation, #back{
	display: inline-block;
	padding: 8px 16px;
	background-color: #FF6347;
	color: white;
	text-decoration: none;
	border-radius: 4px;
	transition: background-color 0.3s;
}

#selecteReservation:hover, #back:hover {
	background-color: #CD5C3F;
}
</style>
</head>
<body>
	<!-- 네비게이션 바 -->
	<ul id="navigation">
		<li><a href="movieControl?action=listMoviesMain"><img
				src="./Image/5wh.png" style="width: 25px; height: 25px;"></a></li>
		<li><a href="MovieSelect.jsp">영화조회</a></li>
		<li><a href="Review.jsp">평점</a></li>
		<li><a href="movieControl?action=listMoviesReservation">영화예매</a></li>
	</ul>
	<!-- 영화 예매 취소 -->
	<h3>영화 예매한 목록</h3>
	<ul id="ReservationList">
		<c:forEach var="r" items="${Reservation}">
			<li
				class="list-group-item list-group-item-action d-flex justify-content-betwwen align-items-center">
				<a class="Reservation-link" data-id="${r.id}"> ${r.movietitle}
					예약날짜: ${r.rdate} 예약시간: ${r.time} -${r.date} </a>
			</li>
		</c:forEach>
	</ul>
	<a id="selecteReservation">확인</a>
	<a href="javascript:history.back()" id="back">뒤로가기</a>
	<script>
		// 영화 목록을 동적으로 생성하여 HTML에 추가
		var movieListElement = document.getElementById("ReservationList");
		var movieLinks = document.querySelectorAll(".Reservation-link"); // 모든 영화 링크 선택

		// 각 링크에 대해 클릭 이벤트 리스너 추가
		movieLinks.forEach(function(link) {
			link.addEventListener("click", function(event) {
				var selectedMovieElement = document
						.getElementById("selecteReservation");
				var id = event.target.dataset.id;

				if (confirm("정말 예매 취소 하시겠습니까?")) {
					var selectedMovieElement = document
							.getElementById("selecteReservation");
					var newHref = "movieControl?action=deleteReservation&id="
							+ id;

					selectedMovieElement.href = newHref;
				}
			});
		});
	</script>
</body>
</html>