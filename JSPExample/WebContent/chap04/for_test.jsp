<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>FOR문 익히기</title>
</head>
<body>
<%
	String str = "";
	for (int i=0; i<=100; i++) {
		if (i % 2 == 1) {
			str += (i + " ");
		}
	}
%>

<h1>1부터 100중에서 홀수 출력</h1>
<h2><%=str %></h2>
</body>
</html>