<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>SWITCH문 익히기</title>
</head>
<body>
<%
	int score = 40;
	String mark = "";
	
	switch (score) {
		case 90: mark = "수"; break;
		case 80: mark = "우"; break;
		case 60: mark = "미"; break;
		case 50: mark = "양"; break;
		default: mark = "가"; break;
	}
%>

<h1>당신의 평점</h1>
<h1><%=mark%></h1>


</body>
</html>