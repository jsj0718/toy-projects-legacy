<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>

<%!
int score = 65;

String makeScore(int score) {
	if (score >= 90) {
		return "��";
	} else if (score >= 80) {
		return "��";
	} else if (score >= 70) {
		return "��";
	} else if (score >= 60) {
		return "��";
	} else {
		return "��";
	}
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>if�� ������</title>
</head>
<body>
	<h1>����� ����</h1>
	<h1><%=makeScore(score) %></h1>
</body>
</html>