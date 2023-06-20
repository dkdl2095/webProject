<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.css" />

<script src="https://cdn.jsdelivr.net/npm/swiper@9/swiper-bundle.min.js"></script>
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
	<h1>영화 예매 및 리뷰 작성</h1>
	<!-- 네비게이션 바 -->
	<ul id="navigation">
		<li><a href="movieControl?action=listMoviesMain"><img src="./Image/5wh.png" style="width: 25px; height: 25px;"></a></li>
		<li><a href="MovieSelect.jsp">영화조회</a></li>
		<li><a href="Review.jsp">평점</a></li>
		<li><a href="movieControl?action=listMoviesReservation">영화예매</a></li>
		<li><a href="Login.jsp">로그인</a></li>
	</ul>
	
	<!-- 영화 정보 표시 -->
	<h3>영화 정보 표시</h3>
	<ul id="movieList">
		<c:forEach var="m" items="${movieslist}">
			<li
				class="list-group-item list-group-item-action d-flex justify-content-betwwen align-items-center">
				<a class="movie-link" data-title="${m.movietitle}"
				data-genre="${m.genre}" data-age="${m.age}">영화제목:
					${m.movietitle} 영화장르: ${m.genre} 제한연령: ${m.age}이상</a>
			</li>
		</c:forEach>
	</ul>
</body>
</html>