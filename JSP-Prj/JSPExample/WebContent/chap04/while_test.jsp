<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>while�� ������</title>
</head>
<body>
<%
	int i = 0;
	String str = "";
	while (i <= 100) {
		if (i % 2 == 1) {
			str += (i + " ");
		}
		i++;
	}
%>

<h1>1���� 100���� ���� �߿��� Ȧ���� ����ϱ�</h1>
<h1><%=str %></h1>
</body>
</html>