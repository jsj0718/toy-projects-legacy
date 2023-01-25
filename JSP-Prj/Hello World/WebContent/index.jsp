<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>첫 JSP 강의 페이지</title>
</head>
<body>
	Hello World!
	<form action="./userJoinAction.jsp" method="POST">
		<input type="text" name="userID">
		<input type="password" name="userPassword">
		<input type="submit" value="제출">
	</form>
</body>
</html>

