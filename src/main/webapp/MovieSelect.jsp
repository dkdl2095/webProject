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
<!-- Script -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>
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

.search-button {
	display: inline-block;
	padding: 10px 20px;
	background-color: #007bff;
	color: #fff;
	border: none;
	text-decoration: none;
	border-radius: 4px;
	cursor: pointer;
}

.search-button:hover {
	background-color: #0056b3;
}
</style>
</head>
<body>
	<h1>영화 예매 및 리뷰 작성</h1>
	<!-- 네비게이션 바 -->
	<ul id="navigation">
		<li><a href="Main.jsp"><img src="\Image\home.png"></a></li>
		<li><a href="MovieSelect.jsp">영화조회</a></li>
		<li><a href="Review.jsp">평점</a></li>
		<li><a href="movieControl?action=listMoviesReservation">영화예매</a></li>
	</ul>
	<!-- 영화 검색 -->
	<div>
		<input type="text" id="movietitle" name="movietitle"
			placeholder="영화 제목 입력" required> <a id="searchLink"
			href="javascript:void(0)" class="search-button"
			onclick="generateURL()">검색</a>
	</div>

	<script>
		function generateURL() {
			var movietitle = document.getElementById("movietitle").value;
			var url = "movieControl?action=listMoviesSelect&movietitle="
					+ encodeURIComponent(movietitle);
			location.href = url;
		}
	</script>
	<!-- 영화 검색 결과 -->
	<h3>영화 검색 결과</h3>
	<ul id="movieList">
		<c:forEach var="m" items="${moviesSelect}">
			<li
				class="list-group-item list-group-item-action d-flex justify-content-betwwen align-items-center">
				<div class="card" style="width: 18rem">
					<img src="${m.photo}" class="card-img-top">
					<div class="card-body">
						<h5 class="card-title">${m.movietitle}</h5>
						<p class="card-text">개봉일:${m.opendate}</p>
							<p class="card-text">${m.genre}</p>
					</div>
				</div>
			</li>
		</c:forEach>
	</ul>
</body>
</html>