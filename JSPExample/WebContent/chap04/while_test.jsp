<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>while문 익히기</title>
</head>
<body>
<%
	int i = 0;
	String str = "";
	while (i <= 100) {
		if (i % 2 == 1) {
			str += (i + " ");
		}
		i++;
	}
%>

<h1>1부터 100까지 정수 중에서 홀수만 출력하기</h1>
<h1><%=str %></h1>
</body>
</html>