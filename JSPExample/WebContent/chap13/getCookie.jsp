<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>쿠키 가져오기</title>
</head>
<body>
<table border="1">
<%
	Cookie[] cookieArray = request.getCookies();

	for (int i=0; i<cookieArray.length; i++) {
%>
		<tr>
			<td>쿠키 이름</td><td><%=cookieArray[i].getName() %></td>
			<td>쿠키 값</td><td><%=cookieArray[i].getValue() %></td>
		</tr>
<%
	}
%>
</table>
</body>
</html>