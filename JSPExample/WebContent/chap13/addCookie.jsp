<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Date" %>
<%@ page import = "java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 설정하기</title>
</head>
<body>
<%
	// 쿠키 이름 설정
	String name = "time";
	
	// 쿠키 값 설정
	Date date = new Date();
	String value = date.toString();
	
	// 쿠키 객체 설정
	Cookie cookie = new Cookie(name, URLEncoder.encode(value, "utf-8"));
	
	// 쿠키 응답헤더에 첨부
	response.addCookie(cookie);
%>

<h2 align="center">쿠키를 설정했습니다.</h2>
</body>
</html>