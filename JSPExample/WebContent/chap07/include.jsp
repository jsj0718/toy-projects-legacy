<%-- inculde 당하는 파일(test.txt)에도
 
<%@  page language="java" contentType="text/html; charset=utf-8"
     pageEncoding="utf-8"%> 
	
	 부분을 추가해줘야 한다.    
--%>

<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Include 지시자 연습</title>
</head>
<body>

<%@include file = "test.txt"%>
<hr>
<p>현재 문서에 외부 파일 내용이 위와 같이 삽입</p>
</body>
</html>