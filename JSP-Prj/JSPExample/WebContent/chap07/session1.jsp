<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� ��ü Ȱ��</title>
</head>
<body>
<%
	String id = "jdm14";
	String pw = "1234";
	
	session.setAttribute("sid", id);
	session.setAttribute("spw", pw);
%>
</body>
</html>