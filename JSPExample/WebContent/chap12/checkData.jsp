<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ID 처리</title>
</head>
<body>
<%
	String id = request.getParameter("id");
%>

<h2 align="center">당신이 입력한 ID는 <%=id %>입니다.</h2>
</body>
</html>