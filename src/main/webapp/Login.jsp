<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>5조</title>
</head>
<style>
body {
	background-color: #E1F5FE;
}

</style>
<body>
    <!-- 로그인 -->
    <h1>로그인</h1>
    <form action="login" method="post">
        <label for="username">사용자 이름:</label>
        <input type="text" name="username" required><br>
        <label for="password">비밀번호:</label>
        <input type="password" name="password" required><br>
        <input type="submit" value="로그인">
    </form>
    <%
        String result = (String) request.getAttribute("result");
        if (result != null) {
            out.println("<p>" + result + "</p>");
        }
    %>
</body>
</html>
