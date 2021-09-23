<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%!
int score = 65;

String makeScore(int score) {
	if (score >= 90) {
		return "수";
	} else if (score >= 80) {
		return "우";
	} else if (score >= 70) {
		return "미";
	} else if (score >= 60) {
		return "양";
	} else {
		return "가";
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>if문 익히기</title>
</head>
<body>
	<h1>당신의 평점</h1>
	<h1><%=makeScore(score) %></h1>
</body>
</html>