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
	String[] array = {"äġ��", "����ȣ", "���¿�", "���븸", "���¼�"};

	for (String name : array) {
		out.println("�̸�: " + name + "<br>"); 	// println�� �ܼ� ȭ�鿡���� \n ���������, ������Ʈ������ ���� ����̹Ƿ� �ٹٲ��� ���Ѵٸ� <br>�� �߰��ؾ� �Ѵ�.
	}
%>
</body>
</html>