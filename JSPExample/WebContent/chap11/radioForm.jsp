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
	String value = request.getParameter("tour");
	String bestTour = "";
	
	if (value.equals("asia")) {
		bestTour += "아시아";
	}
	else if (value.equals("europe")) {
		bestTour += "유럽";
	}
	else if (value.equals("america")) {
		bestTour += "미국/캐나다";
	}
	else {
		bestTour += "국내 여행";
	}
%>

<h1 align="center">당신이 가장 여행하고 싶은 곳은 <%=bestTour %>입니다.</h1>
</body>
</html>