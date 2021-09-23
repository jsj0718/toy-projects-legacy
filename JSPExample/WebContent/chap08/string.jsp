<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>String 객체 이용</title>
</head>
<body>
<%
	String str = "Welcome To My Home";
	
	out.println("charAt(): " + str.charAt(3) + "<br>");
	out.println("concat(): " + str.concat("page") + "<br>");
	out.println("replace(): " + str.replace("Welcome To", "Hello, This is ") + "<br>");
	out.println("substring(): " + str.substring(0,7) + "<br>");
	out.println("toLowerCase(): " + str.toLowerCase() + "<br>");
	out.println("toUpperCase(): " + str.toUpperCase() + "<br>");
	out.println("length(): " + str.length() + "<br>");
	out.println("startsWith(): " + str.startsWith("Welcome") + "<br>");
	out.println("endsWith(): " + str.endsWith("home") + "<br>");
	out.println("indexOf(): " + str.indexOf("To") + "<br>");
	
	if (str.equals("Welcome To My home")) {
		out.println("두 문자열은 동일");
	} else {
		out.println("두 문자열은 다름");
	}
	
%>
</body>
</html>