<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>세션 객체 활용</title>
</head>
<body>
<%
	String myId = (String)session.getAttribute("sid");
	String myPw = (String)session.getAttribute("spw");
%>

<h1>아이디는 <%=myId %>, 비밀번호는 <%=myPw %>입니다.</h1>
</body>
</html>