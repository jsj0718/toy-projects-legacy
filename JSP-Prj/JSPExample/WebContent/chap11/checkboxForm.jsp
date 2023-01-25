<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String[] values = request.getParameterValues("tv");
	String myTv = "";	

	for (String value : values) {
		if (value.equals("drama")) {
			myTv += "드라마/";
		}
		
		if (value.equals("docu")) {
			myTv += "다큐멘터리/";
		}

		if (value.equals("news")) {
			myTv += "뉴스/";
		}

		if (value.equals("show")) {
			myTv += "예능/";
		}

	}
%>

<h3 align="center">당신이 좋아하는 TV 프로그램은 <%=myTv %>입니다.</h3>
</body>
</html>