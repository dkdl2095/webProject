<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
<link rel="stylesheet" href="./Review.css" />
<script type="text/javascript" src="./Review.js"></script>
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
	
	<li style="list-style-type: none;"><a href="Review.html"
		class="booking-button">리뷰작성</a></li>
</body>
</html>