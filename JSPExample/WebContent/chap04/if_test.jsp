<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>if�� ������</title>
</head>
<body>
	<h1>����� ����</h1>
	<%
		int score = 85;
		if (score >= 90) {
	%>			<h1>��</h1>
	<% 
		} else if (score >= 80) {
	%>			<h1>��</h1>
	<%
		} else if (score >= 70) {
	%>			<h1>��</h1>
	<%
		} else if (score >= 60) {		
	%>			<h1>��</h1>
	<%
		} else {
	%>			<h1>��</h1>
	<%	}
	%>
</body>
</html>