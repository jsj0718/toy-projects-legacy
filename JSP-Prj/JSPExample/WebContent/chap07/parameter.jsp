<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>파라미터 연습</title>
</head>
<body>
	<h1>당신의 평점</h1>
<%
	// URL 입력 예시 : http://localhost:8080/chap07/parameter.jsp?score=85 (파라미터 간 연결은 &)
	int score = Integer.parseInt(request.getParameter("score"));
	if (score >= 90) {
%>	<p>수</p>
<% } else if (score >= 80) {
%> 	<p>우</p>	
<% } else if (score >= 70) {
%> 	<p>미</p>	
<% } else if (score >= 60) {
%> 	<p>양</p>
<% } else {
%>	<p>가</p>
<% } %>
</body>
</html>
