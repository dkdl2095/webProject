<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
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

.search-button:hover {
	background-color: #E1F5FE;
}
</style>
<link rel="stylesheet" href="./Review.css" />
<script type="text/javascript" src="./Review.js"></script>
</head>
<body>
	<!-- 네비게이션 바 -->
	<ul id="navigation">
		<li><a href="movieControl?action=listMoviesMain"><img src="./image/5wh.png" alt="Logo" width="30" height="24" class="d-inline-block align-text-top"></a></li>
		<li><a href="MovieSelect.jsp">영화조회</a></li>
		<li><a href="Review.jsp">평점</a></li>
		<li><a href="movieControl?action=listMoviesReservation">영화예매</a></li>
	</ul>
	<!-- 리뷰 목록 -->
	<h3>리뷰 목록</h3>
	<ul id="movieList" style= "background-color: #FFFFFF;">
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
	<li style="list-style-type: none;"><a href="Review.html"
		class="booking-button">리뷰작성</a></li>
</body>
</html>