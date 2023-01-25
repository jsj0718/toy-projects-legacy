<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>if문 익히기</title>
</head>
<body>
	<h1>당신의 평점</h1>
	<%
		int score = 85;
		if (score >= 90) {
	%>			<h1>수</h1>
	<% 
		} else if (score >= 80) {
	%>			<h1>우</h1>
	<%
		} else if (score >= 70) {
	%>			<h1>미</h1>
	<%
		} else if (score >= 60) {		
	%>			<h1>양</h1>
	<%
		} else {
	%>			<h1>가</h1>
	<%	}
	%>
</body>
</html>