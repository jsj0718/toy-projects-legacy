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
	String myId = (String)session.getAttribute("sid");
	String myPw = (String)session.getAttribute("spw");
%>

<h1>���̵�� <%=myId %>, ��й�ȣ�� <%=myPw %>�Դϴ�.</h1>
</body>
</html>