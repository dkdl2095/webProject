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
	<div>
		<input type="text" placeholder="검색어 입력">
		<button>검색</button>
	</div>
</body>
</html>