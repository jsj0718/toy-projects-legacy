<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>FOR�� ������</title>
</head>
<body>
<%
	String str = "";
	for (int i=0; i<=100; i++) {
		if (i % 2 == 1) {
			str += (i + " ");
		}
	}
%>

<h1>1���� 100�߿��� Ȧ�� ���</h1>
<h2><%=str %></h2>
</body>
</html>