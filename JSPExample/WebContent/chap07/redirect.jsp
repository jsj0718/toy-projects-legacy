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
	// redirect.jsp�� �����ϸ� sendRedirect�� �Ű������� �־��� URL�� �̵��Ѵ�.
	response.sendRedirect("http://localhost:8080/chap07/parameter.jsp?score=60");
%>
</body>
</html>