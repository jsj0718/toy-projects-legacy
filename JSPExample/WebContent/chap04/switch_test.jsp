<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>SWITCH�� ������</title>
</head>
<body>
<%
	int score = 40;
	String mark = "";
	
	switch (score) {
		case 90: mark = "��"; break;
		case 80: mark = "��"; break;
		case 60: mark = "��"; break;
		case 50: mark = "��"; break;
		default: mark = "��"; break;
	}
%>

<h1>����� ����</h1>
<h1><%=mark%></h1>


</body>
</html>