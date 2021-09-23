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
	String[] values = request.getParameterValues("job");
	String job = "";
	
	for (String value : values) {
		switch (value) {
			case "1": job += "회사원/"; break;
			case "2": job += "자영업/"; break;
			case "3": job += "공무원/"; break;
			case "4": job += "프로그래머/"; break;
			case "5": job += "교사/"; break;
			case "6": job += "학생/"; break;
			case "7": job += "기타/"; break;
		}
	}
%>

<h2 align="center">당신의 직업은 <%=job %>입니다.</h2>
</body>
</html>