<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5조</title>
</head>
<body>
	<!-- 로그인 -->
    <h1>로그인</h1>
    <form action="test" method="post">
        <label for="username">사용자 이름:</label>
        <input type="text" name="username" required><br>
        <label for="password">비밀번호:</label>
        <input type="password" name="password" required><br>
        <input type="submit" value="로그인">
    </form>
</body>
</html>