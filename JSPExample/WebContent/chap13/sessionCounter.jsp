<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>세션을 이용한 카운터</title>
</head>
<body>
<%
	Integer count = (Integer) session.getAttribute("counter");

	if (count != null) {
		count++;
	} else {
		count = 1;
	}
	
	session.setAttribute("counter", count);
%>

<h3 align="center">당신은 <%=count.intValue() %>번째 방문입니다.</h3>
</body>
</html>