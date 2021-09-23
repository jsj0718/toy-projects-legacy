<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	// redirect.jsp로 접속하면 sendRedirect의 매개변수로 주어진 URL로 이동한다.
	response.sendRedirect("http://localhost:8080/chap07/parameter.jsp?score=60");
%>
</body>
</html>