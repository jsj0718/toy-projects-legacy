<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.io.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>File에 관련된 클래스 이용하기</title>
</head>
<body>
<h3>외부 파일의 내용을 읽습니다.</h3>
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
	<h3>에러: 파일이 존재하지 않거나 읽을 수 없습니다.</h3>		
<% 
	}
%>
</body>
</html>