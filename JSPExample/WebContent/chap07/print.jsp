<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<%
	String[] array = {"채치수", "강백호", "서태웅", "정대만", "송태섭"};

	for (String name : array) {
		out.println("이름: " + name + "<br>"); 	// println이 콘솔 화면에서는 \n 기능이지만, 웹사이트에서는 띄어쓰기 기능이므로 줄바꿈을 원한다면 <br>을 추가해야 한다.
	}
%>
</body>
</html>