<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>File�� ���õ� Ŭ���� �̿��ϱ�</title>
</head>
<body>
<h3>�ܺ� ������ ������ �н��ϴ�.</h3>
<hr>
<%
		
	try {
		File file = new File("C:/workspace/JSPExample/WebContent/chap09/test.txt");
		FileReader fr = new FileReader(file);
		BufferedReader br = new BufferedReader(fr);
		
		String str;
		while ((str = br.readLine()) != null) {
%>
			<%=str %>		
<% 
		}
		
		br.close();
	} catch (Exception e) {
%>
	<h3>����: ������ �������� �ʰų� ���� �� �����ϴ�.</h3>		
<% 
	}
%>
</body>
</html>