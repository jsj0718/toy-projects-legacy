<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>�Ķ���� ����</title>
</head>
<body>
	<h1>����� ����</h1>
<%
	// URL �Է� ���� : http://localhost:8080/chap07/parameter.jsp?score=85 (�Ķ���� �� ������ &)
	int score = Integer.parseInt(request.getParameter("score"));
	if (score >= 90) {
%>	<p>��</p>
<% } else if (score >= 80) {
%> 	<p>��</p>	
<% } else if (score >= 70) {
%> 	<p>��</p>	
<% } else if (score >= 60) {
%> 	<p>��</p>
<% } else {
%>	<p>��</p>
<% } %>
</body>
</html>
